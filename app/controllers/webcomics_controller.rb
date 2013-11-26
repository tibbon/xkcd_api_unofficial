class WebcomicsController < ApplicationController
	def show
		@webcomic_params = webcomic_params
		if @api_key == "foobar"
			@webcomic = Webcomic.where(@webcomic_params)
		else
			@webcomic = Webcomic.where(@webcomic_params).limit(3)
		end

		render json: @webcomic
	end

	private

	def webcomic_params
		params.delete(:controller)
		params.delete(:action)
		@api_key = params[:api_key] || ""
		params.delete(:api_key)
		params
	end
end