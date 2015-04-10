Given(/^that one note is ready for release$/) do
  @note = Fabricate :ripe_memoid 
end

When(/^I run the scheduler$/) do
  Cron.run
end

Then(/^the user of this note should receive an email$/) do
  email = MemoidMailer.notification(@note.user.email).deliver
  email.should deliver_to(@note.user.email)
end
