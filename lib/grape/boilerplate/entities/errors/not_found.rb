require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class NotFound < Base
          private

            def default_error_message
              'Not found'
            end
        end
      end
    end
  end
end
