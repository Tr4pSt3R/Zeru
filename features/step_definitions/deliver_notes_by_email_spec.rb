Given(/^that I have previously added some notes$/) do |table|
  user = User.new

  Memoid.create! content: "abelian groups are commutative", user_id: user.id
  Memoid.create! content: "the dot is a meta-character", user_id: user.id
  Memoid.create! content: "latex is for math typsetting", user_id: user.id
  Memoid.create! content: "gherkin has a plain english syntax", user_id: user.id
  Memoid.create! content: "mean is measure of average", user_id: user.id
end

Given(/^one of them is due for delivery today$/) do
  memoid = Memoid.first

  memoid.release_dates << (ReleaseDate.new delivery_date: Date.today)
end

When(/^I check my email inbox$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see that I have a new note$/) do
  pending # express the regexp above with the code you wish you had
end
