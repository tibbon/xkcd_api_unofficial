namespace :xkcd do
  desc "Imports all XKCD comics to database"
  task import_all: :environment do
  	binding.pry

  	# Get number of most recent comic:
  	recent_comic = HTTParty.get('http://xkcd.com/info.0.json')
  	last_comic_number = recent_comic["num"]
  	for x in 1..last_comic_number
  		comic = HTTParty.get("http://xkcd.com/#{x}"/info.0.json)
  	end

  end

  desc "Imports one XKCD comic to database"
  task import_one: :environment do
  end

  desc "Imports and updates recent to database"
  task import_recent: :environment do
  end

end
