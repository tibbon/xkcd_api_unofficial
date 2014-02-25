class WebcomicsController < ApplicationController
	def show
		@webcomic_params = webcomic_params
		if @api_key == "foobar"
			if !(@limit.empty?) && !(@offset.empty?)
				@webcomic = Webcomic.where(@webcomic_params).limit(@webcomic_params[:limit]).offset(@webcomic_params[:offset])
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
		@limit = params[:limit] || ""
		params.delete(:limit)
		@offset = params[:offset] || ""
		params.delete(:offset)
		params
	end
end
