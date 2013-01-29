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

def json_url
 "https://gist.github.com/raw/07fc05e2d2ba3097e7d7/
    2ef8ae00465c93b81f179d90e3b92a41eed73a81/
    example.json".gsub(/\s+/,'')
end

def yaml_url
  "https://gist.github.com/raw/d320232a2b2e97dd1bd6/
    51a4dd459dc12673ad440debb28f499c89550022/
    test.yml".gsub(/\s/,'')
end

def stub_rest_client!
  require 'rest-client'
  def RestClient.get(url)
    case url
    when json_url then json_text
    when yaml_url then yaml_url
    else
      puts 'Unstubbed call to "RestClient.get"!'
      super(url)
    end
  end
end
stub_rest_client! # Go ahead and call it! Homecooked before(:all)