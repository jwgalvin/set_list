require 'rails_helper'
require 'spec_helper'

describe Song do
  it "displays a song title" do
    artist = Artist.create(name: "Fancy pants")
    song = artist.songs.create!(title: "woot", length: 255, play_count: 2345)
    song_2 = artist.songs.create!(title: "Shbam", length: 255, play_count: 2345)
    visit "/songs/#{song.id}"  #localhost:3000 song 1
    #show 1 song and no other song or artist
    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  xit "displays name of artist" do

  end
end
