class OxfordService
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def conn
    Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
      faraday.headers['app_id'] = ENV["oxford_id"]
      faraday.headers['app_key'] = ENV["oxford_key"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    unless response == 404
      JSON.parse(response.body, symbolize_names: true)
    end
  end

  def validation
    get_json("/api/v1/inflections/en/#{@word}")[:results].first[:lexicalEntries].first[:inflectionOf].first[:text]
  end
end
