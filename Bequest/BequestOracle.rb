$DUNGEON_TRIVIA = [
  [:ursinehomme_une,       :ursinehomme_deux,    :ursinehomme_trois], # Monsters
  [:butin_d_grotte_une, :butin_d_grotte_deux, :butin_d_grotte_trois], # Loot
  [:grotteplege_une,       :grotteplege_deux,      :grotteplege_une], # Traps
], [
  [:borreau_de_ville_une,   :borreau_de_ville_deux,  :borreau_de_ville_trois],
  [:butin_de_le_ville_une, :butin_de_le_ville_deux,  :butin_de_le_ville_deux],
  [:villeplege_une,               :villeplege_deux,          :villeplege_une],
], [
  [:cochonbuta_une,   :cochonbuta_deux,  :cochonbuta_trois],
  [:butin_d_eau_une, :butin_d_eau_deux, :butin_d_eau_trois],
  [:flotplege_une,     :flotplege_deux,   :flotplege_trois],
]

module BequestOracle
  class Auditer
  end

  class CaveOracle
    def self.monster
      require "NeoPathfinding"
      
      monster_trivia = $DUNGEON_TRIVA[0][0]
      
      2.times do
        get_statistics(monster_trivia[0], "Did you know that ursinehommes are suspectible to sandstorms and drowning at sea?",
                       monster_trivia[1], "Sometimes cave monsters will drop loot, although one can only think of why bears have the gear of previous adventurers.",
                       monster_trivia[2], "Sometimes caves will feature traps that will sometimes cave in, nobody really knows who created them.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.loot
      require "NeoPathfinding"
      
      loot_trivia = $DUNGEON_TRIVA[0][1]
      
      2.times do
      get_statistics(loot_trivia[0], "Note that ursinehommes will less frequently drop loot like swords and helmets if your gear breaks.",
                     loot_trivia[1], "You can dump sand in cave ins in order to walk across, you can then open chests across the room. But careful, some filled in pits are quicksand.",
                     loot_trivia[2], "Monster traps will drop swords and helmets if they contain the skeleton of previous adventurers. But watch out, some skeletons come to life.")
                     
                     dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.trap
      require "NeoPathfinding"

      trap_trivia = $DUNGEON_TRIVA[0][2]
      
      2.times do
        get_statistics(trap_trivia[0], "Different sizes of tar pits and falling cave spikes will appear at different points.",
                       trap_trivia[1], "Some stalagmites will be tipped with poison, and you'll need an antidote to treat that.",
                       trap_trivia[2], "Its possible you could trick Ursinehommes into running into sand pits.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
  end
  
  class VillageOracle
    def self.monster
      require "NeoPathfinding"
      
      monster_trivia = $DUNGEON_TRIVA[1][0]
      
      2.times do
        get_statistics(monster_trivia[0], "The headsman of villages, as scary as they might seem, get lost in caves like everyone else, and often drown at sea.",
                       monster_trivia[1], "Headsmen will sometimes drop skulls, and also give potions if you not near a general store.",
                       monster_trivia[2], "Headsmen will sometimes lay out huntsmen trap in order to catch criminals that escape from town. One wonders why they never got caught in their own trap.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.loot
      require "NeoPathfinding"
      
      loot_trivia = $DUNGEON_TRIVA[1][1]

      2.times do
        get_statistics(loot_trivia[0], "Treasure chests will sometimes offer healing items, or money to buy some at the nearest general store.",
                       loot_trivia[1], "The general store should not be confused with the Military supply store, that sells hunting equipment.",
                       loot_trivia[2], "Executioners will also sometimes drop treasure when killed, but can attract attention of more headsmen.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.trap
      require "NeoPathfinding"

      trap_trivia = $DUNGEON_TRIVA[1][2]

      2.times do
        get_statistics(trap_trivia[0], "Sometimes spikepits will be in the ground in order to trap the player: there is no going back from that.",
                       trap_trivia[1], "Do you think its possible to trick executioners into falling into their own death pits?",
                       trap_trivia[2], "A pair of dragon wings can assist you in navigating extended pits, but be mindful of the time limit.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
  end
  
  class OceanOracle
    def self.monster
      require "NeoPathfinding"
      
      monster_trivia = $DUNGEON_TRIVA[2][0]
      
      2.times do
        get_statistics(monster_trivia[0], "Cochonbuta are prone to sandstorms, and for those unfortunate to travel in cave, sometimes evolve to live in those crevaces.",
                       monster_trivia[1],             "Cochonbuta will drop bubbles of air that assist with floating in the sea. Also when cooked they taste like pork.",
                       monster_trivia[2],                                           "Cochonbuta will send hatchlings in order to oink and pinch at sailors lost at sea.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.loot
      require "NeoPathfinding"
      
      loot_trivia = $DUNGEON_TRIVA[2][1]

      2.times do
        get_statistics(loot_trivia[0], "Air bubbles can assist you with floating from bouy to bouy, but be mind that they will eventually pop.",
                       loot_trivia[1], "Hatchlings will sometimes drop pinchers to repurpose into water infused projectile weapons.",
                       loot_trivia[2], "Sand can be melted and made into glass, and such bottles can be sold to chemists whom produce portions.")
                     
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
    
    def self.trap
      require "NeoPathfinding"

      trap_trivia = $DUNGEON_TRIVA[2][2]
      
      2.times do
        get_statistics(trap_trivia[0], "Sometimes the coast will have tsunamis, and the ocean will have hurricanes.",
                       trap_trivia[1], "While Ursinepiros will more frequently drop sea biscuits and hatchling pinchers, you could lure them into brig cells.",
                       trap_trivia[2], "Sometimes hatchlings will fly onto rafts because of nearby hurricanes.")
      
                       dynamic_reward_allocation
      end
      
      sum_of_probabilities
    end
  end
end
