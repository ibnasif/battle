feature "attack" do
  
  scenario "p1 attacks p2 and gets a confirmation" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "tanjiro attacked zoro"
  end

 
  scenario "p1 attacks p2 and reduces p2 hp by 10" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content 'zoro: 90HP'
    expect(page).not_to have_content 'zoro: 100HP'
    
  end

  scenario "display whose turn it is" do
    sign_in_and_play
    expect(page).to have_content "tanjiro's turn"
  end

end
