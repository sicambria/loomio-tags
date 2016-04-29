module Plugins
  module LoomioTags
    class Plugin < Plugins::Base
      setup! :loomio_tags do |plugin|
        # our code will go here!
        puts "Hello, world!"
      end
    end
  end
end
