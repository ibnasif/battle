feature 'enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in 'p1_name', with: "tanjiro"
    fill_in 'p2_name', with: "zoro"
    click_button 'submit'
    expect(page).to have_content ("tanjiro vs zoro")
  end
end