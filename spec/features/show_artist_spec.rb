require 'rails_helper'

describe "Viewing an Artist Page" do
  # let!(:artist) { create :artist }

  it "shows the artist details" do
    visit artist_url(artist)

    expect(page).to have_text(artist.artist_name)
    expect(page).to have_text(artist.bio)
    expect(page).to have_text(artist.age)
  end
end
