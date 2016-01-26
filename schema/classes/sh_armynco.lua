CLASS.name = "Army NCO"
CLASS.desc = "You are a Non-Comissioned Officer in the United States Army"
CLASS.faction = FACTION_ARMY

function CLASS:onCanBe(client)
	return client:isArmyRank(SCHEMA.ncoRanks)
end

CLASS_ARMY_NCO = CLASS.index