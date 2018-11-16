def submit_form
  visit('/')
  fill_in 'name', with: 'Nim'
end
