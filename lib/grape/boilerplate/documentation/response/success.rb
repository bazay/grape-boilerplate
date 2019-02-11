module Grape
  module Boilerplate
    module Documentation
      module Response
        module Success
          class << self
            def created
              { code: 201, message: 'Created' }
            end

            def no_content
              { code: 204, message: 'No content' }
            end
          end
        end
      end
    end
  end
end
