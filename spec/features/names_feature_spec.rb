describe 'can go to index page' do
  it'should be able to input player names' do
    visit('/')
    fill_in('player1', with: 'Andrew')
    fill_in('player2', with: 'Mahmud')
    click_button('submit-button')
    expect(page).to have_content "Andrew vs Mahmud"
  end
end
