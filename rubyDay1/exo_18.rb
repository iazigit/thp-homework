fake_emails = []

for i in 1..100
  fake_emails << "jean.mouloud#{i.to_s.rjust(3,'0')}@yahoo.fr"
end

puts fake_emails
