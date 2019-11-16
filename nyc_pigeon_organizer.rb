def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, value|
    value.each do |key1, value1|
      value1.each do |name|
        if pigeons[name] == nil 
        pigeons[name] = {}
      end
        if pigeons[name][key] == nil 
        pigeons[name][key] = []
      end
       pigeons[name][key].push(key1.to_s)
      end
    end
  end
  pigeons
end
