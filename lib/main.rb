require './lib/classes/YamlReader.rb'

a = YamlReader.new('./config/test.yaml')

puts a.data['person']
