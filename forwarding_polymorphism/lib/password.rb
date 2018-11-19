class Password
  attr_reader :pass
  def initialize(pass)
    @pass = pass
  end
  def authenticate(candidate_password)
    return true if candidate_password == @pass
    false
  end
end
