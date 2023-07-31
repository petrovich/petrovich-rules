#!/usr/bin/env ruby

require 'yaml'
require 'json'

yaml = File.open('rules.yml',  &YAML.method(:load))
json = File.open('rules.json', &JSON.method(:load))

File.open('rules-yml.yml', 'w')  { |f| f.write(yaml.to_yaml) }
File.open('rules-json.yml', 'w') { |f| f.write(json.to_yaml) }

if yaml == json
  puts 'rules.yml matches rules.json'
else
  puts 'rules.yml does not matches rules.json'
end
