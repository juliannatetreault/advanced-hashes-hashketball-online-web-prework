require "pry"

def game_hash
  game_info = {
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
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks =>7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
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
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

#knows the number of points scored by each player
def num_points_scored(player_name)
  game_hash.each do |location, team_hash|
    #binding.pry
    team_hash.each do |players, data|
      #binding.pry
      if players == :players
        data.each do |player, stats|
          #binding.pry
          if player == player_name
            return stats[:points]
          end  
        end
      end
    end
  end
end

#knows the shoe size of each player
def shoe_size(player_name)
  game_hash.each do |location, team_hash|
    #binding.pry
    team_hash.each do |players, data|
      if players == :players
        data.each do |player, stats|
          #binding.pry
          if player == player_name
            return stats[:shoe]
          end
        end
      end
    end
  end
end

#knows the Brooklyn Nets colors are 'Black' and 'White'
def team_colors(team_name)
  game_hash.each do |location, team|
    #binding.pry
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end

#returns the team names
def team_names
    game_hash.collect do |location, team_data|
      team_data[:team_name]
      #binding.pry
  end
end

#returns the player jersey numbers
def player_numbers(team_name)
  numbers = []
  game_hash.each do |location, team_hash|
    #binding.pry
    if team_hash[:team_name] == team_name
      team_hash.each do |players, data|
        if players == :players
          #binding.pry
          data.each do |player, stats|
            #binding.pry
            numbers << stats[:number]
          end
        end
      end
    end
  end
  numbers
end

#returns all stats for a given player
def player_stats(player_name)
  game_hash.each do |location, team_hash|
    #binding.pry
    team_hash.each do |players, data|
      #binding.pry
      if players == :players
        data.each do |player, stats|
          #binding.pry
          if player == player_name
            return stats
          end
        end
      end
    end
  end
end

#returns the number of rebounds of the player 
#with the biggest shoe size
def big_shoe_rebounds
  biggest_shoe_size = 0
  number_of_rebounds = 0
  game_hash.each do |location, team_hash|
    team_hash.each do |players, data|
      if players == :players
        data.each do |player, stats|
          if stats[:shoe] > biggest_shoe_size
           biggest_shoe_size = stats[:shoe]
           number_of_rebounds = stats[:rebounds]
          end
        end
      end
    end
  end
  number_of_rebounds
end










