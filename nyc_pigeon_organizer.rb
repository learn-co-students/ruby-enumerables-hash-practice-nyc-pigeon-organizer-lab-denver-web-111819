require 'pp'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  
  pigeon_hash = pigeon_names(data)
  
  what_color_is_each_pigeon = name_and_data(data, :color)
  where_each_pigeon_lives = name_and_data(data, :lives)
  what_is_each_pigeons_gender = name_and_data(data, :gender)
  
  pigeon_hash = combine_data(pigeon_hash, what_color_is_each_pigeon, where_each_pigeon_lives, what_is_each_pigeons_gender)
  
  pigeon_hash
end

def pigeon_names(pigeon_data)
  pigeon_names = {}
  
  pigeon_data[:gender][:male].length.times do |index|
    pigeon_names[pigeon_data[:gender][:male][index]] = {}
  end
  
  pigeon_data[:gender][:female].length.times do |index|
    pigeon_names[pigeon_data[:gender][:female][index]] = {}
  end
  
  pigeon_names
end

def name_and_data(pigeon_data, which_data)
  output_hash = {}
  
  pigeon_data[which_data].each do |key, value|
    value.length.times do |index|
      if output_hash[value[index]]
        output_hash[value[index]].push(key.to_s)
      else
        output_hash[value[index]] = [key.to_s]
      end
    end
  end
  
  output_hash
end

def combine_data(name_data, color_data, location_data, gender_data)
  final_hash = name_data
  
  final_hash.each do |final_key, final_value|
    color_data.each do |color_key, color_value|
      if final_key == color_key
        final_hash[final_key][:color] = color_value
      end
    end
  end
  
  final_hash.each do |final_key, final_value|
    location_data.each do |location_key, location_value|
      if final_key == location_key
        final_hash[final_key][:lives] = location_value
      end
    end
  end
  
  final_hash.each do |final_key, final_value|
    gender_data.each do |gender_key, gender_value|
      if final_key == gender_key
        final_hash[final_key][:gender] = gender_value
      end
    end
  end
  
  final_hash
end


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
pp nyc_pigeon_organizer(pigeon_data)