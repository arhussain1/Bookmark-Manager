def sign_in
  visit('/')
  fill_in('user_name', with: 'Dave')
  click_button('Submit')
end