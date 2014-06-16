require "jekyll-opal/version"
require "jekyll/converters/opal"
require "jekyll/generators/opal"

module Jekyll
  module Opal
    OPAL_LIB_LOCATION = File.join("js", "opal.js").freeze
  end
end
