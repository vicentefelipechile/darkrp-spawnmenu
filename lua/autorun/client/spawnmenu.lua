--[[--------------------------------
    Configuracion
--------------------------------]]--

local iconosEntity = {
    ["Traficante de armas"]     = "icon16/gun.png",
    ["Hacker"]                  = "icon16/application_xp_terminal.png",
    ["Accesorios"]              = "icon16/attach.png",
    ["Banco"]                   = "icon16/calculator.png"
}

local iconosShipments = {
    ["Farmeo"]                  = iconosEntity.Farmeo
}



--[[--------------------------------
    Codigo
--------------------------------]]--

local screenSize = ScrH() < 801 and 128 or 256
screenSize = 256

local function WhatSize()
    --return ScrH() < 801
    return false
end

surface.CreateFont("DarkRPSpawnMenu.BigFont", {
    font = "Verdana",
    size = 24
})

local function RPSpawnMenuRot(dmodelpanel, ent)
    if dmodelpanel:IsHovered() then
        ent:SetAngles( Angle(0, 0, 0))
    else
        ent:SetAngles( Angle( 0, RealTime() * 15 % 360, 0 ) )
        ent:SetColor(Color(255, 255, 255))
    end

end

local function RPSpawnMenu(pnlContent, tree, node)
    local Categorised = {}
    local Shipments = {}


    --[[--------------------------------
                    Entidades
    --------------------------------]]--

    tree:AddNode(" - Entities - ", "icon16/bullet_black.png")


    local RPEntites = list.Get( "DarkRPEntities" )
    if RPEntites then

        for _, ent in pairs( RPEntites ) do

            ent.category = ent.category or " Others"
            
            Categorised[ent.category] = Categorised[ent.category] or {}
            
            ent.ClassName = ent.entity

            ent.ScriptedEntityType = "entity"
            
            table.insert(Categorised[ent.category], ent)

        end
    end

    for CategoryName, v in SortedPairs(Categorised) do

        local icono = iconosEntity[CategoryName] or "icon16/image.png"

        local node = tree:AddNode(CategoryName, "materials/" .. icono)
        -- local node = entidades:AddFolder(CategoryName)

        node.DoPopulate = function(self)

            if self.PropPanel then return end
                
            self.PropPanel = vgui.Create( "ContentContainer", pnlContent )
            self.PropPanel:SetVisible( false )
            self.PropPanel:SetTriggerSpawnlistChange( false )

            local hoverCheck = function() return true end
            local iconPanelPaint = function(p, w, h)
                p:oldPaint(w, h)

                draw.RoundedBox(4, 6, h - 32, w-12 , 26, Color(0, 0, 0, 200))

                local line1_h = WhatSize() and h - 32 or h - 26
                local line2_h = WhatSize() and h - 42 or h - 30
                
                if p.textLine2 then
                    line1_h = h - 52
                
                    draw.DrawText(p.textLine2, "DermaDefault", w / 2, line2_h, Color(255, 255, 255), TEXT_ALIGN_CENTER)
                end

                draw.DrawText(p.textLine1 or "Error", _, w / 2, line1_h, Color(255, 255, 255), TEXT_ALIGN_CENTER)

            end

            
            for k, ent in SortedPairsByMemberValue(v, "name") do
                local entname = ent.name or ent.entity

                local iconPanel = spawnmenu.CreateContentIcon(ent.ScriptedEntityType or "entity", self.PropPanel, {
                    nicename    = entname .. " - " .. ent.price .. "$",
                    spawnname    = ent.ClassName,
                    material    = "entities/_" .. ent.ClassName .. ".png",
                    admin        = ent.AdminOnly
                })

                iconPanel:SetSize(screenSize, screenSize)
                iconPanel.textLine1 = WhatSize() and entname .. "\n" .. ent.price .. "$" or entname .. " - " .. ent.price .. "$"

                iconPanel.oldPaint = iconPanel.Paint
                iconPanel.Paint = iconPanelPaint
                iconPanel.IsHovered = hoverCheck

                iconPanel.DoClick = function(p)
                    LocalPlayer():ConCommand("say /" .. ent.cmd)
                end

                
                
                local icon = vgui.Create( "DModelPanel", iconPanel)

                local sX, sY = WhatSize() and 120 or 238, WhatSize() and 92 or 215
                local pX = WhatSize() and 4 or 9
                icon:SetSize(sX, sY)
                icon:SetPos(pX, pX)
                icon:SetModel(ent.model)
                icon:SetColor(ent.color)

                if ent.material then
                    icon.Entity:SetMaterial(ent.material)
                end

                local campos = WhatSize() and Vector(30, 30, 30)
                icon:SetCamPos(Vector(30, 30, 30))
                icon:SetLookAt( icon.Entity:GetPos() )
                icon:SetFOV(40)
                icon.Entity:SetPos(Vector(0, 0, -10))

                icon.DoClick = iconPanel.DoClick
                icon.LayoutEntity = RPSpawnMenuRot
            end

        end

        node.DoClick = function(self)

            self:DoPopulate()
            pnlContent:SwitchPanel(self.PropPanel)

        end
    end



    --[[--------------------------------
                Shipments
    --------------------------------]]--

    tree:AddNode(" - Shipments - ", "icon16/bullet_black.png")


    local RPShipments = list.Get( "DarkRPShipments" )
    if RPShipments then

        for _, ent in pairs( RPShipments ) do

            ent.category = ent.category or "Others"
            
            Shipments[ent.category] = Shipments[ent.category] or {}
            
            ent.ClassName = ent.entity

            ent.ScriptedEntityType = "entity"
            
            table.insert(Shipments[ent.category], ent)

        end
    end

    for CategoryName, v in SortedPairs(Shipments) do
        local icono = iconosShipments[CategoryName] or "icon16/lorry.png"

        local node = tree:AddNode(CategoryName, "materials/" .. icono)
        -- local node = entidades:AddFolder(CategoryName)

        node.DoPopulate = function(self)

            if self.PropPanel then return end
                
            self.PropPanel = vgui.Create( "ContentContainer", pnlContent )
            self.PropPanel:SetVisible( false )
            self.PropPanel:SetTriggerSpawnlistChange( false )

            local hoverCheck = function() return true end
            local iconPanelPaint = function(p, w, h)
                p:oldPaint(w, h)

                draw.RoundedBox(4, 6, h - 32, w-12 , 26, Color(0, 0, 0, 200))

                local line1_h = WhatSize() and h - 32 or h - 26
                local line2_h = WhatSize() and h - 42 or h - 30
                
                if p.textLine2 then
                    line1_h = h - 52
                
                    draw.DrawText(p.textLine2, "DermaDefault", w / 2, line2_h, Color(255, 255, 255), TEXT_ALIGN_CENTER)
                end

                draw.DrawText(p.textLine1 or "Error", _, w / 2, line1_h, Color(255, 255, 255), TEXT_ALIGN_CENTER)

            end

            
            for k, ent in SortedPairsByMemberValue(v, "name") do
                local entname = ent.name or ent.entity

                local iconPanel = spawnmenu.CreateContentIcon(ent.ScriptedEntityType or "entity", self.PropPanel, {
                    nicename    = entname .. " - " .. ent.price .. "$",
                    spawnname    = entname,
                    material    = "entities/_" .. entname .. ".png",
                    admin        = ent.AdminOnly
                })

                iconPanel:SetSize(screenSize, screenSize)
                iconPanel.textLine1 = WhatSize() and entname .. "\n" .. ent.price .. "$" or entname .. " - " .. ent.price .. "$"

                iconPanel.oldPaint = iconPanel.Paint
                iconPanel.Paint = iconPanelPaint
                iconPanel.IsHovered = hoverCheck

                iconPanel.DoClick = function(p)
                    LocalPlayer():ConCommand("darkrp buyshipment " .. entname)
                end
                
                local icon = vgui.Create( "DModelPanel", iconPanel)

                local sX, sY = WhatSize() and 120 or 238, WhatSize() and 92 or 215
                local pX = WhatSize() and 4 or 9
                icon:SetSize(sX, sY)
                icon:SetPos(pX, pX)
                icon:SetModel(ent.model)
                icon:SetColor( ent.color )

                if ent.material then
                    icon.Entity:SetMaterial(ent.material)
                end

                local campos = WhatSize() and Vector(30, 30, 30)
                local fov = ent.fov or 50
                icon:SetCamPos(Vector(30, 30, 0))
                icon:SetLookAt( icon.Entity:GetPos() )
                icon:SetFOV(fov)
                icon.Entity:SetPos(Vector(0, 0, -5))

                icon.DoClick = iconPanel.DoClick
                icon.LayoutEntity = RPSpawnMenuRot
            end

        end

        node.DoClick = function(self)

            self:DoPopulate()
            pnlContent:SwitchPanel(self.PropPanel)

        end
    end

    Categorised = nil
    Shipments = nil


    local FirstNode = tree:Root():GetChildNode( 0 )
    if ( IsValid( FirstNode ) ) then
        FirstNode:InternalDoClick()
    end

end

hook.Add( "DarkRP.SpawnMenu", "AddEntityContent", RPSpawnMenu)

spawnmenu.AddCreationTab( "DarkRP Entities", function()

    local ctrl = vgui.Create( "SpawnmenuContentPanel" )
    ctrl:EnableSearch( "DarkRP", "DarkRP.SpawnMenu" )
    ctrl:CallPopulateHook( "DarkRP.SpawnMenu" )
    return ctrl

end, "icon16/folder_bug.png", 3 )