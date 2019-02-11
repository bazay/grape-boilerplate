require 'grape/boilerplate/entities/errors'

module Grape
  module Boilerplate
    module Documentation
      module Response
        module Error
          class << self
            def bad_request
              { code: 400, error: 'Bad request', model: Grape::Boilerplate::Entities::Errors::BadRequest }
            end

            def forbidden
              { code: 403, error: 'Forbidden', model: Grape::Boilerplate::Entities::Errors::Forbidden }
            end

            def not_found
              { code: 404, error: 'Not found', model: Grape::Boilerplate::Entities::Errors::NotFound }
            end

            def request_timeout
              { code: 408, error: 'Request timeout', model: Grape::Boilerplate::Entities::Errors::RequestTimeout }
            end

            def unauthorized
              { code: 401, error: 'Unauthorized', model: Grape::Boilerplate::Entities::Errors::Unauthorized }
            end

            def unprocessable_entity
              { code: 422, errors: { base: ['Error message'] }, model: Grape::Boilerplate::Entities::Errors::UnprocessableEntity }
            end
          end
        end
      end
    end
  end
end
