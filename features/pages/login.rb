require_relative 'base_page'

class Login < BasePage
  page_url($base_url+'/login')

  text_field(:username, :id => 'login')
  text_field(:password, :id => 'password')
  button(:login, :name => 'commit')

  def log_in_with(username, password)
    self.username = username
    self.password = password
    login
  end
end