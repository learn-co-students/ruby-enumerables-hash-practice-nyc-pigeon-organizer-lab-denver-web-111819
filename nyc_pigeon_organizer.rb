def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each_pair do |key, value|
    value.each_pair do |key2, value2|
      value2.each do |name|
        
        # if the name hasn't been added to the hash yet,
        # add it and set it equal to a new hash object
        if !new_hash[name]
          new_hash[name] = {}
        end
        
        # if the key hasn't been added to the name hash yet,
        # add it and set it equal to a new array
        if !new_hash[name][key]
          new_hash[name][key] = []
        end
        
        # push the key2 to the array
        new_hash[name][key].push(key2.to_s)
      end  
    end  
  end  
  new_hash 
end