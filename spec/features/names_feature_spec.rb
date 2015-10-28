feature 'Usernames' do
  scenario 'should be able to input and view player names' do
    sign_in_and_play
    expect(page).to have_content "Andrew vs Mahmud"
  end
end

feature 'Player health' do
  scenario 'Viewing Player 2\'s health' do
    sign_in_and_play
    expect(page).to have_content "Mahmud's health: 100"
  end
end

feature 'Attack' do
  scenario 'Player 1 attacks Player 2 and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Andrew attacks Mahmud"
  end
end
