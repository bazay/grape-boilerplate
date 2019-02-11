require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class RequestTimeout < Base
          private

            def default_error_message
              'Request timeout'
            end
        end
      end
    end
  end
end
