require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class Forbidden < Base
          private

            def default_error_message
              'Forbidden'
            end
        end
      end
    end
  end
end
