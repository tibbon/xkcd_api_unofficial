class WebcomicsController < ApplicationController
	def show
	Webcomic.where(webcomic_params)
	render json: @webcomic
	end

	private

	def webcomic_params
		params.delete(:controller)
		params.delete(:action)
		params
	end
end