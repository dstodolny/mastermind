require_relative "mastermind/version"

module Mastermind
end

lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/mastermind/**/*.rb"].each { |file| require file }
