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


puts nyc_pigeon_organizer(pigeon_data)
