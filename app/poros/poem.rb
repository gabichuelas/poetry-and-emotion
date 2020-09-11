class Poem
  attr_reader :title, :author, :full_text, :tones
  def initialize(poem_params)
    @title = poem_params[:title]
    @author = poem_params[:author]

    # used to have lines turning into one string in here,
    # but refactored to keep the data raw and use it in different
    # ways elsewhere.
    @full_text = poem_params[:lines]
    @tones = poem_params[:tones]
  end
end
