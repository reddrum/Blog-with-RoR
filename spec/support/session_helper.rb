def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'mike'
  fill_in :user_password, :with => 'secure!@#'
  fill_in :user_password_confirmation, :with => 'secure!@#'

  click_button 'Sign up'
end