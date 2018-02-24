class OxfordService
  attr_reader :word, :response

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

  def response(url)
    response = conn.get(url)
    if response.status == 404
      return false
    else
      JSON.parse(response.body, symbolize_names: true)[:results].first[:lexicalEntries].first[:inflectionOf].first[:text]
    end
  end

  def validation
    response("/api/v1/inflections/en/#{@word}")
  end

  # def get_json(url)
  #   response = conn.get(url)
  #   unless response.status == 404
  #     JSON.parse(response.body, symbolize_names: true)[:results].first[:lexicalEntries].first[:inflectionOf].first[:text]
  #   end
  # end
end
