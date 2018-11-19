require_relative "./password.rb"

class User
  attr_reader :name, :bio, :age, :password
  def initialize(name, bio, age, password, password_class = Password)
    @name = name
    @bio = bio
    @age = age
    @password = password_class.new(password)
  end

  def authenticate(pass)
    @password.authenticate(pass)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end
