module Waw
  module Routing
    # The DSL for routing blocks
    class DSL 
      
      # Creates a DSL instance for some routing instance
      def initialize(routing)
        @routing = routing
      end
      
      # Evaluates the block as routing execution and installs it
      # under all provided action results
      def upon(*action_results)
        raise ArgumentError, "Missing routing block on upon", caller unless block_given?
        @routing.add_rules(action_results, yield)
      end
      
      # Feedback routing execution
      def feedback
      end
      
      # Form validation feedback routing execution
      def form_validation_feedback
      end
      
      # Refresh routing execution
      def refresh
      end
      
      # Redirect routing execution
      def redirect(opts)
      end
      
    end # class DSL
  end # module Routing
end # module Waw
