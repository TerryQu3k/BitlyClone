require 'securerandom'

class Url < ActiveRecord::Base
	before_save :shorter_url
	# This is Sinatra! Remember to create a migration!
	def shorter_url
		self.short_url = SecureRandom.base64(10)
	end
end

