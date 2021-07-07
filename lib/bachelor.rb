def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    contestant_hash.each do |attribute, value|
      if attribute == "status" && value == "Winner"
        return contestant_hash["name"].split(" ")[0]
      end
    end
  end
  # code here
end

def get_contestant_name(data, occupation)
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if attribute == "occupation" && value == occupation
          return contestant_hash["name"]
        end
      end
    end
  end
  # code here
end

def count_contestants_by_hometown(data, hometown)
  hometowne_count = 0
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          hometowne_count += 1
        end
      end
    end
  end
  return hometowne_count
  # code here
end

def get_occupation(data, hometown)
  occupation_array = []
  data.each do |season, season_array|
    season_array.each do |contestant_hash|
      contestant_hash.each do |attribute, value|
        if attribute == "hometown" && value == hometown
          occupation_array << contestant_hash["occupation"]
        end
      end
    end
  end
  return occupation_array[0]
  # code here
end

def get_average_age_for_season(data, season)
  total_age = 0
  i = data[season].length
  data[season].each do |contestant_hash|
    contestant_hash.each do |attribute, value|
      if attribute == "age"
         total_age += value.to_i
      end
    end
  end
  average_age = total_age/i.to_f
  average_age = average_age.round
  # code here
end
