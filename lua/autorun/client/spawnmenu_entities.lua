--[[------------------------------------------------------------
    Codigo para copair y pegar toda la wea de darkrp aqui
------------------------------------------------------------]]--

local DarkRP = DarkRP or {}

function DarkRP.createEntity(name, tbl)
    list.Add("DarkRPEntities", {
        ["name"]        = name,
        ["entity"]      = tbl["ent"],
        ["cmd"]         = tbl["cmd"],
        ["model"]       = tbl["model"],
        ["price"]       = tbl["price"],
        ["category"]    = tbl["category"],
        ["color"]       = tbl["color"] or Color(255, 255, 255),
        ["material"]    = tbl["material"]
    })
end

--[[------------------------------------------------------------
    Editar debajo de este comentario
------------------------------------------------------------]]--

DarkRP.createEntity("Tip Jar", {
    ent = "darkrp_tip_jar",
    model = "models/props_lab/jar01a.mdl",
    price = 0,
    max = 2,
    cmd = "tipjar",
    allowTools = true,
})




DarkRP.createEntity("Upgradeable Money Printer", {
    ent = "upgrade_money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 3000,
    max = 2,
    cmd = "upgrademoneyprinter"
})
 
DarkRP.createEntity("Basic Generator", {
    ent = "generator_basic",
    model = "models/props_c17/TrapPropeller_Engine.mdl",
    price = 1000,
    max = 2,
    cmd = "basicgenerator"
})
 
DarkRP.createEntity("Cooling Plate", {
    ent = "upgrade_coolingplate",
    model = "models/props_lab/reciever01c.mdl",
    price = 5000,
    max = 2,
    cmd = "upgradecoolingplate",
    material = "phoenix_storms/wire/pcb_green",
})




DarkRP.createEntity("Trash Burner", {
    ent = "ztm_trashburner",
    model = "models/zerochain/props_trashman/ztm_trashburner.mdl",
    price = 1000,
    max = 1,
    cmd = "buyztm_trashburner",
    allowed = {TEAM_ZTM_TRASHMAN},
    category = "Trashman"
})

DarkRP.createEntity("Trash Recycler", {
    ent = "ztm_recycler",
    model = "models/zerochain/props_trashman/ztm_recycler.mdl",
    price = 1000,
    max = 1,
    cmd = "buyztm_recycler",
    allowed = {TEAM_ZTM_TRASHMAN},
    category = "Trashman"
})