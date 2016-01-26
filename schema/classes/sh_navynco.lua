CLASS.name = "Navy NCO"
CLASS.desc = "You are a Non-Comissioned Officer in the United States Navy"
CLASS.faction = FACTION_NAVY

function CLASS:onCanBe(client)
	return client:isNavyRank(SCHEMA.ncoRanks)
end

CLASS_NAVY_NCO = CLASS.index