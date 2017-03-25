class RestaurantsController < ApplicationController

	def index

		# binding.pry

		# params = { term: 'food',
  		#          limit: 3,
  		#          category_filter: 'discgolf'
  		#        }

		# locale = { lang: 'fr' }
		# client.search('San Francisco', params, locale)

		Yelp.client.search('San Francisco',{term: 'food',limit: 3},{lang: 'en'})

		# binding.pry

	end


end