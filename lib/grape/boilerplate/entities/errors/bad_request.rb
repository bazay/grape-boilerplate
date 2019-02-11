require_relative 'base'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class BadRequest < Base
          private

            def default_error_message
              'Bad request'
            end
        end
      end
    end
  end
end
