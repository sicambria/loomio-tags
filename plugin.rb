module Plugins
  module LoomioTags
    class Plugin < Plugins::Base
      setup! :loomio_tags do |plugin|
        # our code will go here!
        plugin.enabled = ‘ENABLE_THREAD_TAGGING’
        puts "loomio_tags: Hello, world!"
      end
    end
  end
end
