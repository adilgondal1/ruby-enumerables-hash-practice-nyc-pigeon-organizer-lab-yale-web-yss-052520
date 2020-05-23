def nyc_pigeon_organizer(data)
  males = data[:gender][:male]
  females = data[:gender][:female]
  all_birds = males.concat(females)
  #p all_birds
  hash = {}
  all_birds.each do |name|
    hash[name] = {:color => [], :gender => [], :lives => []}
  end
  color = data[:color]
  color.each do |key,value|
    value.each do |name|
      hash[name][:color].push(key.to_s)
    end
  end
  gender = data[:gender]
  gender.each do |key,value|
    value.each do |name|
      hash[name][:gender].push(key.to_s)
    end
  end
  lives = data[:lives]
  lives.each do |key,value|
    value.each do |name|
      hash[name][:lives].push(key.to_s)
    end
  end 
  hash
end