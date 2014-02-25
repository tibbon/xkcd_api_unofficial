class WebcomicsController < ApplicationController
	def show
		@webcomic_params = webcomic_params
		if @api_key == "foobar"
			if @webcomic_params[:limit]
				@webcomic = Webcomic.where(@webcomic_params).limit(@webcomic_params[:limit])
			else
				@webcomic = Webcomic.where(@webcomic_params)
			end
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
