require 'claide'

require 'mylib'
require 'spec_helper/command'
include SpecHelper::Command

ROOT = Pathname.new(File.expand_path('../../', __FILE__))
$:.unshift((ROOT + 'lib').to_s)
$:.unshift((ROOT + 'spec').to_s)

module SpecHelper 
    def self.temporary_directory 
        ROOT + 'tmp'
    end
end