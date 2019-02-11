RSpec.shared_examples_for 'error response entity' do
  it {  }
  describe '.superclass' do
    subject { described_class.superclass }

    it { is_expected.to eq(Grape::Boilerplate::Entities::Errors::Base) }
  end
end
