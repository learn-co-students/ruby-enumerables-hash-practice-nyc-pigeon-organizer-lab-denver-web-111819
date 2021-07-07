def nyc_pigeon_organizer(data)
  new_pigeon_list = {}
  data.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        new_pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = new_pigeon_list.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_pigeon_list[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_pigeon_list[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_pigeon_list[item][:lives] << location
        end
      end
    end
  end
  new_pigeon_list
end
