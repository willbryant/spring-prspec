module Spring
  module Commands
    class PRSpec
      def env(*)
        "test"
      end

      def exec_name
        "prspec"
      end

      def gem_name
        "parallel_rspec"
      end

      def call
        ::RSpec.configuration.start_time = Time.now if defined?(::RSpec.configuration.start_time)
        load Gem.bin_path(gem_name, exec_name)
      end
    end

    Spring.register_command "prspec", PRSpec.new
    Spring::Commands::Rake.environment_matchers[/^db:parallel:/] = "test"
  end
end
