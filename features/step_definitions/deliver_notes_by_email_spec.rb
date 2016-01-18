Given(/^that I have previously added some notes$/) do |table|
  @user = Fabricate(:user)

  Memoid.create! content: "abelian groups are commutative", user_id: @user.id
end

When(/^one of them is due for delivery today$/) do
  @memoid = Memoid.first
  @memoid.release_dates << (ReleaseDate.new delivery_date: Date.today)

  reset_mailer
  Cron.run
end

Then(/^I should receive an email with this note$/) do
  expect( unread_emails_for('mightyj@hotmail.co.uk') ).to_not be_empty
  expect(open_email('mightyj@hotmail.co.uk').decode_body.strip).to eq(@memoid.content)
end
