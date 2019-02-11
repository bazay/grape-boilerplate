require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class Unauthorized < Base
          private

            def default_error_message
              'Unauthorized'
            end
        end
      end
    end
  end
end
