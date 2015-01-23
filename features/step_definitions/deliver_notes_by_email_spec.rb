Given(/^that I have previously added some notes$/) do |table|
  @user = User.new

  Memoid.create! content: "abelian groups are commutative", user_id: @user.id
  Memoid.create! content: "the dot is a meta-character", user_id: @user.id
  Memoid.create! content: "latex is for math typsetting", user_id: @user.id
  Memoid.create! content: "gherkin has a plain english syntax", user_id: @user.id
  Memoid.create! content: "mean is measure of average", user_id: @user.id
end

When(/^one of them is due for delivery today$/) do
  @memoid = Memoid.first
  memoid.release_dates << (ReleaseDate.new delivery_date: Date.today)
end

Then(/^I should receive an email with this note$/) do
  # clear mailing queue
  reset_mailer

  # verify
  expect( unread_emails_for( @user.email) ).to_not be_empty
  expect( open_email(@user.email. :with_text => @memoid.content ) )
end
