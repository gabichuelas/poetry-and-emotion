class Poem
  SEARCH = SearchFacade.new
  attr_reader :title, :author, :full_text, :tones
  def initialize(poem_params, tones)
    @title = poem_params[:title]
    @author = poem_params[:author]
    @full_text = poem_params[:lines]
    @tones = tones
  end
end
