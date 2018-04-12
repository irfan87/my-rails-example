class StarshipMailer < ApplicationMailer
	default from: 'irfanshukri203@gmail.com'

	def starship_created_mailer(starship)
		@starship = starship
		mail(to: @starship.email, subject: 'Starship created')
	end
end
