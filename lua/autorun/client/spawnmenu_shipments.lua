--[[------------------------------------------------------------
	Codigo para copair y pegar toda la wea de darkrp aqui
------------------------------------------------------------]]--

local DarkRP = DarkRP or {}

function DarkRP.createShipment(name, tbl)
	list.Add("DarkRPShipments", {
		["name"]		= name,
		["entity"]		= tbl["ent"],
		["cmd"]			= tbl["cmd"],
		["model"]		= tbl["model"],
        ["amount"]      = tbl["amount"],
		["price"]		= tbl["price"],
		["category"]	= tbl["category"],
        ["color"]       = tbl["color"] or Color(255, 255, 255),
        ["fov"]         = tbl["category"] == "Pistols" and 30 or 50
	})
end

--[[------------------------------------------------------------
	Editar debajo de este comentario
------------------------------------------------------------]]--

--[[--------------------
        Rifles
--------------------]]--

DarkRP.createShipment("Cobalt Kinetics EDGE Rifle", {
    model = "models/weapons/private_arsenals/w_kinetic_edge_rifle.mdl",
    entity = "tfa_private_edge_rifle",
    price = 48000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("Colt Model 933", {
    model = "models/weapons/private_arsenals/w_ro933.mdl",
    entity = "tfa_private_ro933",
    price = 39000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("CZ 805 BREN", {
    model = "models/weapons/private_arsenals/w_cz805.mdl",
    entity = "tfa_private_cz805",
    price = 43000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("Daewoo K2C", {
    model = "models/weapons/private_arsenals/w_k2c.mdl",
    entity = "tfa_private_k2c",
    price = 46000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("Famas F1", {
    model = "models/weapons/private_arsenals/w_famas.mdl",
    entity = "tfa_private_famas",
    price = 35000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("HK XM8", {
    model = "models/weapons/private_arsenals/w_xm8.mdl",
    entity = "tfa_private_xm8",
    price = 43000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("HK416", {
    model = "models/weapons/private_arsenals/w_hk416.mdl",
    entity = "tfa_private_hk416",
    price = 44000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("SIG SG 552 Commando", {
    model = "models/weapons/private_arsenals/w_sg552.mdl",
    entity = "tfa_private_sg552",
    price = 43000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("SIG SG-751 SAPR", {
    model = "models/weapons/private_arsenals/w_sg751.mdl",
    entity = "tfa_private_sg751",
    price = 49000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("HK433", {
    model = "models/weapons/private_arsenals/w_hk433.mdl",
    entity = "tfa_private_hk433",
    price = 39000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})







--[[--------------------
        Snipers
--------------------]]--

DarkRP.createShipment("MacMillan TAC-50", {
    model = "models/weapons/private_arsenals/w_tac50.mdl",
    entity = "tfa_private_tac50",
    price = 66000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("M1C Garand", {
    model = "models/weapons/private_arsenals/w_m1cgarand.mdl",
    entity = "tfa_private_m1cgarand",
    price = 68000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("HK SL8", {
    model = "models/weapons/private_arsenals/w_sl8.mdl",
    entity = "tfa_private_sl8",
    price = 52000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("FN SCAR MK20", {
    model = "models/weapons/private_arsenals/w_mk20.mdl",
    entity = "tfa_private_mk20",
    price = 59000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("CheyTac M200 Intervention", {
    model = "models/weapons/private_arsenals/w_m200.mdl",
    entity = "tfa_private_m200",
    price = 69000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("Barrett M82", {
    model = "models/weapons/private_arsenals/w_m82.mdl",
    entity = "tfa_private_m82",
    price = 77000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("AMP DSR-1", {
    model = "models/weapons/private_arsenals/w_dsr.mdl",
    entity = "tfa_private_dsr",
    price = 63000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})










--[[--------------------
        Shotguns
--------------------]]--

DarkRP.createShipment("Winchester Model 1897", {
    model = "models/weapons/private_arsenals/w_windchester1897.mdl",
    entity = "tfa_private_winchester1897",
    price = 59000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("Remington 870 Express Tactical", {
    model = "models/weapons/private_arsenals/w_remington870.mdl",
    entity = "tfa_private_remington870",
    price = 73000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("Mossberg 500 Custom", {
    model = "models/weapons/private_arsenals/w_m500_magpul.mdl",
    entity = "tfa_private_m500_magpul",
    price = 56000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("Kel-Tec KSG", {
    model = "models/weapons/private_arsenals/w_ksg12.mdl",
    entity = "tfa_private_ksg12",
    price = 30000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("Fabarm P.S.S.10", {
    model = "models/weapons/private_arsenals/w_pss10.mdl",
    entity = "tfa_private_pss10",
    price = 72000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("AA-12", {
    model = "models/weapons/private_arsenals/w_aa12.mdl",
    entity = "tfa_private_aa12",
    price = 62000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})










--[[--------------------
    Submachine Guns
--------------------]]--

DarkRP.createShipment("Kriss Vector", {
    model = "models/weapons/private_arsenals/w_kriss_vector.mdl",
    entity = "tfa_private_kriss_vector",
    price = 37000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("PP-19 Bizon", {
    model = "models/weapons/private_arsenals/w_bizon.mdl",
    entity = "tfa_private_bizon",
    price = 29000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("PP-2000", {
    model = "models/weapons/private_arsenals/w_pp2000.mdl",
    entity = "tfa_private_pp2000",
    price = 27000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("PPSH-41", {
    model = "models/weapons/private_arsenals/w_ppsh41.mdl",
    entity = "tfa_private_ppsh41",
    price = 31000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("HK UMP45", {
    model = "models/weapons/private_arsenals/w_ump45.mdl",
    entity = "tfa_private_ump45",
    price = 46000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("HK MP7", {
    model = "models/weapons/private_arsenals/w_mp7.mdl",
    entity = "tfa_private_mp7",
    price = 55000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("HK MP5A3", {
    model = "models/weapons/private_arsenals/w_mp5.mdl",
    entity = "tfa_private_mp5",
    price = 52000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("HK MP5 Swordfish", {
    model = "models/weapons/private_arsenals/w_mp5swordfish.mdl",
    entity = "tfa_private_mp5swordfish",
    price = 37000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})

DarkRP.createShipment("FN P90", {
    model = "models/weapons/private_arsenals/w_p90.mdl",
    entity = "tfa_private_p90",
    price = 48000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Submachine guns",
})










--[[--------------------
     Pistols
--------------------]]--

DarkRP.createShipment("Beretta M9 Samurai Edge", {
    model = "models/weapons/private_arsenals/w_m9_samurai.mdl",
    entity = "tfa_private_m9_samurai",
    price = 16000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Desert Eagle Mark XIX", {
    model = "models/weapons/private_arsenals/w_deagle.mdl",
    entity = "tfa_private_deagle",
    price = 24000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Desert Eagle Mark XIX Custom", {
    model = "models/weapons/private_arsenals/w_deagle_xix.mdl",
    entity = "tfa_private_deagle_xix",
    price = 17000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Dual Glock 17", {
    model = "models/weapons/private_arsenals/w_glock17_a.mdl",
    entity = "tfa_private_dual_glock17",
    price = 22000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Dual Glock 19", {
    model = "models/weapons/private_arsenals/w_glock19_flash.mdl",
    entity = "tfa_private_dual_glock19",
    price = 22000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Minebea P9", {
    model = "models/weapons/private_arsenals/w_p220.mdl",
    entity = "tfa_private_p220",
    price = 25000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("SIG-Sauer P226 C", {
    model = "models/weapons/private_arsenals/w_p226.mdl",
    entity = "tfa_private_p226",
    price = 21000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("HK USP", {
    model = "models/weapons/private_arsenals/w_usp45.mdl",
    entity = "tfa_private_usp45",
    price = 24000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Glock 19", {
    model = "models/weapons/private_arsenals/w_glock19.mdl",
    entity = "tfa_private_glock19",
    price = 21000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("HK VP70", {
    model = "models/weapons/private_arsenals/w_vp70.mdl",
    entity = "tfa_private_vp70",
    price = 15000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Jericho 941 R", {
    model = "models/weapons/private_arsenals/w_jericho.mdl",
    entity = "tfa_private_jericho",
    price = 25000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Pistols",
})
