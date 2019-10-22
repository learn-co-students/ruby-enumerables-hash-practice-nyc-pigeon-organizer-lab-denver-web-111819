def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |describers, details|
    details.each do |features, names|
      names.each do |name|
        if pigeon_list[name] == nil 
        pigeon_list[name] = {}
        end
        if pigeon_list[name][describers] == nil 
        pigeon_list[name][describers] = []
        end
      pigeon_list[name][describers] << features.to_s
      end
    end
  end
    pigeon_list
end
