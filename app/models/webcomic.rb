class Webcomic < ActiveRecord::Base
	validates :num, uniqueness: true
end
