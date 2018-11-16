require_relative "./web_helper.rb"

feature 'Testing Birthday Greeter' do

  scenario 'Contains hello there when navigated to index' do
    visit('/')
    expect(page).to have_content "Hello there!"
  end
  scenario 'Contains whats your name when navigated to index' do
    visit('/')
    expect(page).to have_content "What's your name?"
  end
  scenario 'Contains whats your birthday when navigated to index' do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end
  scenario 'Returns Happy Birthday if today is birthday' do
    submit_form
    fill_in 'birthday', with: Date.parse(Time.now.to_s).to_s
    click_button("Go!")
    expect(page).to have_content "Happy Birthday Nim!"
  end
end
