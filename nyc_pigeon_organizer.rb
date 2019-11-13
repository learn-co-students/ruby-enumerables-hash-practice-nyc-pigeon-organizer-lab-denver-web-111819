def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  
  data.collect {|key, value| value.collect{|key2, value2| value2.collect{|name|
      if result[name] == nil 
        result[name] = {}
      end
      if result[name][key] == nil 
        result[name][key] = []
      end
      result[name][key].push(key2.to_s)
  }
  }
  }
  result 
end
