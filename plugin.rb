module Plugins
  module LoomioTags
    class Plugin < Plugins::Base
      setup! :loomio_tags do |plugin|
        # our code will go here!
        puts "loomio_tags: Hello, world!"
      end
    end
  end
end
