class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  # Encodes the user id in a JWT if the User exists and authenticates successfully
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    # user.authenticate uses bcrypt gem to authenticate the user with a clean password
    # returns nil password is wrong
    return user if user && user.authenticate(password)

    errors.add :user_authentication, "invalid credentials"
    nil
  end
end
