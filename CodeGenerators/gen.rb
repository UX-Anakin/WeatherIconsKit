require './CodeGenerator.rb'

names = [];
codes = []

previous = ""
File.read("css/weather-icons.css").each_line do |line| 
  # puts line
  line.scan(/.*content: "\\f(.*)";.*/) do |code|

    name = previous.scan(/\.(.+):before {/).flatten().first
    nameParts = name.split('-')
    nameParts = nameParts.each_with_index.map do |p, i|
      if i < 1
        p
      else
        p = p.capitalize
      end
    end
    name = nameParts.join
    names.push name
    codes.push "\\uf#{code.first}"
  end
  previous = line
end

generator = CodeGenerator.new('WeatherIcons', names, codes)
generator.generate
