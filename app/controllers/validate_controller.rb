class ValidateController < ApplicationController
  def index
    @word = Word.new(params[:search])
    # @word = params[:search]
    # @result = OxfordService.new(@word).validation

  #   @conn = Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
  #     faraday.headers['app_id'] = ENV["oxford_id"]
  #     faraday.headers['app_key'] = ENV["oxford_key"]
  #     faraday.adapter Faraday.default_adapter
  #   end
  #
  #     @response = @conn.get("/api/v1/inflections/en/#{@word}")
  #
  #     unless @response.status == 404
  #       @result = JSON.parse(@response.body, symbolize_names: true)[:results].first[:lexicalEntries].first[:inflectionOf].first[:text]
  #     end
  #
  end
end
