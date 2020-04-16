require 'nokogiri'
require 'open-uri'



page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

puts page.text


#all_emails_links = page.xpath('//a')
#page.xpath('//a[contains(@href, "mailto")]')

#all_emails_links.each do |email_link|
#      puts email_link.text #ou n'importe quelle autre opération de ton choix ;)
#      end
