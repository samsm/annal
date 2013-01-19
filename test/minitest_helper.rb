require 'rubygems'
gem 'minitest' # ensures you're using the gem, and not the built in MT
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/mock'

require 'annal'

def json_text
  IO.read("#{Annal.project_root}/test/test.json")
end

def yaml_text
  IO.read("#{Annal.project_root}/test/test.yml")
end
