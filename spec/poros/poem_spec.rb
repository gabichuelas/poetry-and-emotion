RSpec.describe Poem do
  before :each do
    poem_details = {
        "title": "Not at Home to Callers",
        "author": "Emily Dickinson",
        "lines": [
            "Not at Home to Callers",
            "Says the Naked Tree --",
            "Bonnet due in April --",
            "Wishing you Good Day --"
        ],
        "linecount": "4",
        "tones": ["Joy"]
    }

    @poem = Poem.new(poem_details)
  end

  it 'can create Poem with title, author, full_text, and tones' do

    expect(@poem.title).to eq('Not at Home to Callers')
    expect(@poem.author).to eq('Emily Dickinson')
    expect(@poem.full_text).to eq([
        "Not at Home to Callers",
        "Says the Naked Tree --",
        "Bonnet due in April --",
        "Wishing you Good Day --"
    ])
    expect(@poem.tones).to eq(["Joy"])
  end
end
