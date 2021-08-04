def sign_in_and_play
  visit ('/')
  fill_in 'p1_name', with: "tanjiro"
  fill_in 'p2_name', with: "zoro"
  click_button 'submit'
end