require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class UnprocessableEntity < Base
          private

            def default_error_message
              'Unprocessable entity'
            end
        end
      end
    end
  end
end
