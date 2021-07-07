def nyc_pigeon_organizer(data)
  pigeons_by_names = {}
  data.each do |key, value|
    value.each do |keyone, valueone|
      valueone.each do |name|
        if pigeons_by_names[name] == nil 
          pigeons_by_names[name] = {}
        end
        if pigeons_by_names[name][key] == nil 
          pigeons_by_names[name][key] = []
        end
        pigeons_by_names[name][key] << keyone.to_s 
      end
    end
  end
  pigeons_by_names
end
