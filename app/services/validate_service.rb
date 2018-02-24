class ValidateService

  def initialize(word)
    @word = word
  end

    def find_root
      OxfordService.new(@word).validation
    end

end
