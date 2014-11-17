module Features
  def sign_in
    sign_in_as generate(:email)
  end

  def sign_in_as(email)
    visit todos_path as: create(:user, email: email)
  end
end
