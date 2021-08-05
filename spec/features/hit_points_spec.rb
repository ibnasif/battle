feature 'view hit points' do
  scenario "player 1 can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'zoro: 100HP'
  end
end

