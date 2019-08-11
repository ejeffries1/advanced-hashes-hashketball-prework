require "pry"

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, 
    "Reggie Evans" => {
      :number => 0,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, 
    "Brook Lopez" => { 
      :number => 0,
      :shoe => 17,
      :points => 17,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, 
    "Mason Plumlee" => {
      :number => 0,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, 
    "Jason Terry" => {
      :number => 0,
      :shoe => 15,
      :points => 19,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise","Purple"],
    :players => {
      "Jeff Adrien" => {
    :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
    }, "Bismack Biyombo" => { 
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, "DeSagna Diop" => { 
      :number => 0,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    }, "Ben Gordon" => { 
      :number => 0,
      :shoe => 15,
      :points => 33,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
    },
     "Kemba Walker" => {
      :number => 0,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      }
    }
  }
}
end
# Write your code here!

def num_points_scored(names)
 game_hash.collect do |loc, info|
  info.collect do |attributes, stats|
    if stats.include?(names) 
       return game_hash[loc][attributes][names][:points]
     end
end
 end
end

def shoe_size(name)
  game_hash.collect do |loc, info|
    info.collect do |attributes, stats|
      if stats.include?(name)
        return game_hash[loc][attributes][name][:shoe]
      end
    end
end
end

def team_colors(team)
  array = []
  game_hash.each do |loc, info|
      info.each do |attributes, stats|
        if stats == team
          return game_hash[loc][:colors]
        end
      end
  end
end

def team_names
  array = []
  game_hash.each do |loc, info|
    info.each do |attributes, stats|
      stats.each do |attrib, stuff|
        return stuff
      end
    end
  end
end

