def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_by_name = {}

  data.each { |key, value| 
    key.each { | nKey, nValue| #nKey is a symbol value, nValue is an array
      nValue.map { |element| ## arrays of names 
        if !pigeons_by_name[element]
          pigeons_by_name[element] = nKey           
        }
    }
  }
end
