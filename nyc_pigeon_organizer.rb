def nyc_pigeon_organizer(data)
  pigeons_by_name = {}
  data.each do |key, value|
    value.each do |nKey, nValue|
      nKey = nKey.to_s
      nValue.map { |e|
        if !pigeons_by_name[e]
          pigeons_by_name[e] = {key => [nKey]}
        elsif pigeons_by_name[e][key]
          pigeons_by_name[e] = {key => pigeons_by_name[e][key].push(nKey)}
        else
          pigeons_by_name[e].merge!({key => [nKey]})
        end
       }
    end
  end
  pigeons_by_name
end


puts nyc_pigeon_organizer(pigeon_data)
