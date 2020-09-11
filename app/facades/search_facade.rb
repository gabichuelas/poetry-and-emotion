class SearchFacade
  def initialize
    @poetry_service ||= PoetryService.new
    @ibm_tone_service ||= IbmToneService.new
  end

  def top_10_poems_for(author)
    poems = @poetry_service.poems(author, 10)
    poems.map do |poem|
      poem[:tones] ||= get_tones(poem[:lines])
      Poem.new(poem)
    end
  end

  def get_tones(lines)
    @ibm_tone_service.document_tones(lines.join("\n")).map do |tone|
      tone[:tone_name]
    end
  end
end
