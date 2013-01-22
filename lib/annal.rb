require "annal/version"
require 'annal/parse'
require 'annal/fetch'
require 'annal/document'
require 'annal/collection'

module Annal
  def self.root
    File.dirname(__FILE__)
  end

  def self.project_root
    File.expand_path(File.join(root, '..'))
  end
end
