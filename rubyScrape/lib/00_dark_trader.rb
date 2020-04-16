require 'nokogiri'
require 'open-uri'


def getData
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  symbols = page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div')
  symbols = symbols.map{|e| e.text}
  prices = page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a')
  prices = prices.map{|e| e.text.delete('$').to_f}

  crypto = Hash[symbols.zip prices]
  return crypto
end

puts getData
