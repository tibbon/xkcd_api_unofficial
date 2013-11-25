namespace :xkcd do
  desc "Imports all XKCD comics to database"
  task import_all: :environment do
  	# Get number of most recent comic:
  	recent_comic = HTTParty.get('http://xkcd.com/info.0.json')
  	last_comic_number = recent_comic["num"]
  	for x in 1..last_comic_number
  		comic = HTTParty.get("http://xkcd.com/#{x}/info.0.json")
  		insert_comic_to_database(comic)
  		puts "Added Comic: #{comic["title"]}"
  	end

  end

  desc "Imports one XKCD comic to database"
  task import_one: :environment do
  end

  desc "Imports and updates recent to database"
  task import_recent: :environment do
  end

end

def insert_comic_to_database(comic)
	Webcomic.create(
		month: comic["month"],
		num: comic["num"],
		link: comic["link"],
		year: comic["year"],
		news: comic["news"],
		safe_title: comic["safe_title"],
		transcript: comic["transcript"],
		alt: comic["alt"],
		img: comic["img"],
		title: comic["title"],
		day: comic["day"]
	)
end
