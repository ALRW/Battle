def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Andrew')
  fill_in('player2', with: 'Mahmud')
  click_button('Submit')
end
