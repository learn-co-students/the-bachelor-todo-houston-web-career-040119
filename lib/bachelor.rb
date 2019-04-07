require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner_hash = data[season].find { |contestant| contestant["status"] == "Winner" }
  winner_hash["name"].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  got_it = ""
  data.values.each do |season|
    season.each do |contestant|
      if (contestant["occupation"] == occupation)
        got_it = contestant["name"]
      end
    end
  end
  got_it
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.values.each do |season|
    season.each do |contestant|
      if (contestant["hometown"] == hometown)
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  got_it = []
  data.values.each do |season|
    season.each do |contestant|
      if (contestant["hometown"] == hometown)
        got_it << contestant["occupation"]
      end
    end
  end
  got_it.first
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |contestant|
    ages << contestant["age"].to_i
  end
  (ages.inject{ |sum, el| sum + el }.to_f / ages.size).round
end
