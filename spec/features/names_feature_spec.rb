feature 'Usernames' do
  scenario 'should be able to input and view player names' do
    visit('/')
    fill_in('player1', with: 'Andrew')
    fill_in('player2', with: 'Mahmud')
    click_button('Submit')
    expect(page).to have_content "Andrew vs Mahmud"
  end
end

feature 'Player health' do
  scenario 'Viewing Player 2\'s health' do
    visit('/')
    fill_in('player1', with: 'Andrew')
    fill_in('player2', with: 'Mahmud')
    click_button('Submit')
    expect(page).to have_content "Mahmud's health: 100"
  end
end
