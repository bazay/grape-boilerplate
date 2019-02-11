RSpec.describe Grape::Boilerplate::Documentation::Response::Success do
  %i[created no_content].each do |success_type|
    it { is_expected.to respond_to(success_type) }

    context ".#{success_type}" do
      let(:status_codes) do
        {
          created: 201,
          no_content: 204
        }
      end

      it { expect(described_class.send(success_type)[:code]).to eq status_codes[success_type] }
      it { expect(described_class.send(success_type)[:message]).to eq success_type.to_s.humanize.capitalize }
    end
  end
end
