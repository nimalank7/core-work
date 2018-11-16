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
  scenario "Redirects to not today if birthday isn't today" do
    submit_form
    fill_in 'birthday', with: '2013-12-07'
    click_button("Go!")
    expect(page).to have_content "Your birthday will be in x days, Nim"
  end
  scenario "Returns the number of days till birthday" do
    submit_form
    fill_in 'birthday', with: '1991-08-01'
    click_button("Go!")
    expect(page).to have_content "Your birthday will be in x days, Nim"
  end
end
