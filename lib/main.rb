require './lib/YamlReader.rb'

a = YamlReader.new('./config/test.yaml')

puts a.data['person']
