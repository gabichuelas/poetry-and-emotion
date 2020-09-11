class Poem
  SEARCH = SearchFacade.new
  attr_reader :title, :author, :full_text, :tones
  def initialize(poem_params)
    @title = poem_params[:title]
    @author = poem_params[:author]
    @full_text = poem_params[:lines]
    # @tones = SEARCH.document_tones(@full_text).map do |tone|
    #   tone[:tone_name]
    # end
    @tones = []
  end

  # def tones
  #   tones = @search.document_tones(@full_text)
  #   tones.map do |tone|
  #     tone[:tone_name]
  #   end
  # end
end
