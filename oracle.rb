require_relative "Bequest/BequestOracle.rb"

def cavern
  BequestOracle::CaveOracle.monster
  BequestOracle::CaveOracle.loot
  BequestOracle::CaveOracle.trap
end

def sandvillage
  BequestOracle::VillageOracle.monster
  BequestOracle::VillageOracle.loot
  BequestOracle::VillageOracle.trap
end

def ocean
  BequestOracle::OceanOracle.monster
  BequestOracle::OceanOracle.loot
  BequestOracle::OceanOracle.trap
end
