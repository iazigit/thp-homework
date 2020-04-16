require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)  
  page = Nokogiri::HTML(open(townhall_url))
  email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
  return email
end

puts get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")

def get_townhall_urls
  url = 'https://www.annuaire-des-mairies.com/'
  dir = 'val-d-oise.html'
  page = Nokogiri::HTML(open(url + dir))
  citypath = "/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[17]"
  citypath = '//a[@class="lientxt"]'
  townhalls = page.xpath(citypath)
  townhalls = townhalls.map{|e| [e.text, url + e['href'][2..-1]]}
  return townhalls
end

def perform
  th = get_townhall_urls
  mail_valdoise = Hash.new
  th.each do |town, url|
    mail_valdoise[town] = get_townhall_email(url)
  end
  puts mail_valdoise
end

perform
