require 'grape-entity'

module Grape
  module Boilerplate
    module Entities
      module Errors
        class Base < Grape::Entity
          expose :success, documentation: { type: FalseClass }
          expose :error, documentation: { type: String }, unless: -> { object&.responds_to?(:errors) }
          expose :errors, documentation: { type: Hash }, if: -> { object&.responds_to?(:errors) }

          private

            def success
              false
            end

            def error
              object&.respond_to?(:error) ? object&.error : default_error_message
            end

            def default_error_message
              'An error occurred'
            end
        end
      end
    end
  end
end
