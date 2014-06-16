require 'opal'

module Jekyll
  module Converters
    class Opal < Converter

      def matches(ext)
        !!(ext =~ /\.opal/i)
      end

      def output_ext(ext)
        ".js"
      end

      def convert(content)
        ::Opal.compile(content)
      end

    end
  end
end
