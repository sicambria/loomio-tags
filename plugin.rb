module Plugins
  module LoomioTags
    class Plugin < Plugins::Base
      setup! :loomio_tags do |plugin|
        # our code will go here!
        plugin.enabled = ‘ENABLE_THREAD_TAGGING’
        puts "loomio_tags: Hello, world!"

        plugin.use_class ‘models/tag’
        plugin.use_class ‘models/discussion_tag’

          plugin.use_database_table :tag do |table|
          table.belongs_to :group
          table.string :name
          table.string :color
          table.timestamps
        end

        plugin.use_database_table :discussion_tag do |table|
          table.belongs_to :tag
          table.belongs_to :discussion
          table.timestamps
        end

      end # setup
    end # class Plugin
  end # module LoomioTags
end # module Plugins
