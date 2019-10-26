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
  pigeon_list = {}
    data.each do |c_g_l, value|
      value.each do |traits, pigeon_names|
        pigeon_names.each do |name|
          if pigeon_list[name] == nil
            pigeon_list[name] = {}
          end
          if pigeon_list[name][c_g_l] == nil
            pigeon_list[name][c_g_l] = []
          end
          pigeon_list[name][c_g_l].push(traits.to_s)
        end
      end
    end
    pigeon_list
  end
            
nyc_pigeon_organizer(pigeon_data)