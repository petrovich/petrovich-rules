require 'psych'
require 'json'

desc 'Generate rules.json from rules.yml'
task :json do
  File.open('rules.json', 'w') do |f|
    f.puts JSON.pretty_generate(Psych.load(File.read('rules.yml')))
  end
  File.open('gender.json', 'w') do |f|
    f.puts JSON.pretty_generate(Psych.load(File.read('gender.yml')))
  end
end

task :default => :json
