class Word
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def message
    if root == false
      "'#{@word}' is not a valid word"
    else
    "'#{@word}' is a valid word and its root form is '#{root}'"
    end
  end

  def root
     # ValidateService.new(@word).find_root
     OxfordService.new(@word).validation

  end

end
