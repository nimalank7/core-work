feature 'Testing Birthday Greeter' do

  scenario 'Contains hello there when navigated to index' do
    visit("/")
    expect(page).to have_content "Hello there!"
  end
  scenario 'Contains whats your name when navigated to index' do
    visit("/")
    expect(page).to have_content "What's your name?"
  end
  scenario 'Contains whats your birthday when navigated to index' do
    visit("/")
    expect(page).to have_content "When's your birthday?"
  end
  scenario 'Returns Happy Birthday Nim' do
    visit("/")
    click_button("Go!")
    expect(page).to have_content "Happy Birthday Nim!"
  end
end
