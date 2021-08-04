feature "attack player 2" do
  scenario "p1 attacks p2 and gets a confirmation" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "tanjiro attacked zoro"
  end
end
