require "password"
describe Password do
  let(:password){Password.new("Password")}
  it "creates an instance of the Password class" do
    expect(password.instance_of? Password).to eq true
  end
  it "user can set password to 'password'" do
    expect(password.pass).to eq "Password"
  end
  it "returns true if user enters password correctly" do
    expect(password.authenticate("Password")).to eq true
  end
  it "returns false if user enters password correctly" do
    expect(password.authenticate("incorrect")).to eq false
  end
end
