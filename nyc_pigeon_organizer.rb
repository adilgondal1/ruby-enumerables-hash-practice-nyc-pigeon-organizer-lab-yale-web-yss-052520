def nyc_pigeon_organizer(data)
  males = data[:gender][:male]
  females = data[:gender][:female]
  all_birds = males.concat(females)
  #p all_birds
  hash = {}
  males.each do |name|
    hash[name] = {:color => [], :gender => ["male"], :lives => []}
  end
  females.each do |name|
    hash[name] = {:color => [], :gender => ["female"], :lives => []}
  end
  color = data[:color]
  color.each do |key,value|
    value.each do |name|
      hash[name][:color].push(key.to_s)
    end
  end
  lives = data[:lives]
  lives.each do |key,value|
    value.each do |name|
      hash[name][:lives].push(key.to_s)
    end
  end 
  p hash
end