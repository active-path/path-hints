require 'active_path/subscribers/subscriber'
module ActivePath
  module PathHints
    class Subscriber < Subscribers::Subscriber
      def perform
        buffer.prepend("<!-- start #{partial}#{with_local_variables.to_s} --!>".html_safe)
        buffer.concat("<!-- end #{partial} --!>".html_safe)
      end

      private

      def with_local_variables
        if options.is_a?(Hash)
          variables = options[:locals].map do |k,v|
            count = (" (#{v.count})" if v.is_a?(Array)).to_s
            "#{k} => #{v.class}#{count}"
          end
          "\nwith local variables: #{JSON.pretty_generate(variables)}"
        end
      end
    end
  end
end