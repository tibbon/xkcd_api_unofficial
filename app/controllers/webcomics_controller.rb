class WebcomicsController < ApplicationController
	def show
		@webcomic = Rails.cache.fetch(webcomic_params, expires_in: 1.month) do
			Webcomic.where(webcomic_params)
		end
		render json: @webcomic
	end

	private

	def webcomic_params
		params.delete(:controller)
		params.delete(:action)
		params
	end
end