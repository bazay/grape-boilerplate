require 'pathname'

module Grape
  module Boilerplate
    class << self
      def root
        Pathname.new ::File.dirname(::File.expand_path('../../', __dir__))
      end
    end
  end
end
