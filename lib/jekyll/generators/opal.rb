require 'opal'

module Jekyll
  module Generators
    class Opal < Generator

      def generate(site)
        lib_location = File.expand_path(File.join("js", "opal.js"), site.source)
        site.keep_files << write_file(location)
      end

      def write_file(location)
        ensure_directory(location)
        File.open(location, 'wb') do |f|
          f.puts(opal_stdlib)
        end
        location
      end

      def opal_stdlib
        Opal::Builder.build('opal')
      end

      def ensure_directory(location)
        dir = File.dirname(location)
        unless File.directory?(dir)
          require 'fileutils'
          FileUtils.mkdir_p(dir)
        end
      end

    end
  end
end
