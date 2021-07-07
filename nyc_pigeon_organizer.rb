def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each do |key, specs|
      specs.each do |value, names|
        names.each do |name|
        if not new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if not new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        new_hash[name][key].push(value.to_s)
      end
    end
  end
  new_hash
end
