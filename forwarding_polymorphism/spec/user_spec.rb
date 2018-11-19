require "user"
describe User do
  let(:password_class) {double :password_class, new: password}
  let(:user) {User.new("Nim", "Software Developer", 27, "password", password_class)}
  let(:password) {double :password, pass: "Password"}
  it "creates an instance of a User class" do
    expect(user.instance_of? User).to eq true
  end

  it "sets name to Nim" do
    expect(user.name).to eq "Nim"
  end

  it "sets bio to Software Developer" do
    expect(user.bio).to eq "Software Developer"
  end

  it "sets age to 27" do
    expect(user.age).to eq 27
  end

  it "initializes a password class with 'password'" do
    expect(user.password.pass).to eq "Password"
  end

  it "returns Nim born in 1991: Software Developer" do
    expect(user.profile).to eq "Nim, born in 1991: Software Developer"
  end

  it "returns true when sent the Password authenticate message" do
    expect(password).to receive(:authenticate) {true}
    user.authenticate("pass")
  end

end
