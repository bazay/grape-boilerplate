RSpec.describe Grape::Boilerplate::Documentation::Response::Error do
  %i[bad_request forbidden not_found request_timeout unauthorized unprocessable_entity].each do |error_type|
    it { is_expected.to respond_to(error_type) }

    context ".#{error_type}" do
      let(:status_codes) do
        {
          bad_request: 400,
          forbidden: 403,
          not_found: 404,
          request_timeout: 408,
          unauthorized: 401,
          unprocessable_entity: 422
        }
      end

      it { expect(described_class.send(error_type)[:code]).to eq status_codes[error_type] }
      it { expect(described_class.send(error_type)[:model].name).to eq "Grape::Boilerplate::Entities::Errors::#{error_type.to_s.classify}" }
    end
  end
end
