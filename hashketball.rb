# Write your code here!

require 'pry'
def game_hash
  teams = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1
      },
        "Reggie Evans" => {
            number: 30,
            shoe: 14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7
      },
          "Brook Lopez" => {
              number: 11,
              shoe: 17,
              points: 17,
              rebounds: 19,
              assists: 10,
              steals: 3,
              blocks: 1,
              slam_dunks: 15
        },
          "Mason Plumlee" => {
              number: 1,
              shoe: 19,
              points: 26,
              rebounds: 12,
              assists: 6,
              steals: 3,
              blocks: 8,
              slam_dunks: 5
        },
          "Jason Terry" => {
              number: 31,
              shoe: 15,
              points: 19,
              rebounds: 2,
              assists: 2,
              steals: 4,
              blocks: 11,
              slam_dunks: 1
        } 
      } 
    }, 

    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
            number: 4,
            shoe: 18,
            points: 10,
            rebounds: 1,
            assists: 1,
            steals: 2,
            blocks: 7,
            slam_dunks: 2
        }, 
          "Bismak Biyombo" => {
              number: 0,
              shoe: 16,
              points: 12,
              rebounds: 4,
              assists: 7,
              steals: 7,
              blocks: 15,
              slam_dunks: 10
          }, 
            "DeSagna Diop" => {
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5
            }, 
              "Ben Gordon" => {
                  number: 8,
                  shoe: 15,
                  points: 33,
                  rebounds: 3,
                  assists: 2,
                  steals: 1,
                  blocks: 1,
                  slam_dunks: 0
              }, 
                "Brendan Haywood" => {
                    number: 33,
                    shoe: 15,
                    points: 6,
                    rebounds: 12,
                    assists: 12,
                    steals: 22,
                    blocks: 5,
                    slam_dunks: 12
                } 
      } 
    } 
  } 
end

# returns the number of points scored for that player
def num_points_scored(player_name) 
  game_hash.each do |location, attributes|
    attributes[:players].each do |key, value|
      if key == player_name 
        return value[:points] 
      end
    end
  end
end
  

  
#   #   if team_data[:players].include?(player_name)
#   #   return team_data[:players][player_name][:points]
#   #   end
#   # end
  
#   Takes in an argument of a player's name and returns the shoe size for that player
def shoe_size(player_name)
  game_hash.each do |location, info|
    info.each do |key, value|
      if key == :players
        value.each do |name, shoe|
          if name == player_name
            return shoe[:shoe]
          end
        end
      end
    end
  end
end


# Operates on the game hash to return an array of the team names  
def team_colors(color)
  game_hash.each do |location, data|
    if data[:team_name] == color
      return data[:colors]
    end
  end
end

# Operates on the game hash to return an arry of the team names
def team_names
  
 
end

# takes in an argument of a team name and returns an array of the jersey number's for that team
def player_numbers(name) 
  array = []
  game_hash.each do |location, data|
    if data[:team_name] == name
      data[:players].map do |player, number|
        array << number[:number]
      end
    end
  end
  return array
end

#   Takes in an argument of a player's name and returns a hash of that player's stats 
def player_stats(player)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data| 
      binding.pry
    end
  end
end







