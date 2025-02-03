require 'rails_helper'

RSpec.describe Country, type: :model do
  describe "#find" do
    let(:subject) { Country.find(1).name }
    context "when country is found" do
      it { is_expected.to eq("United Arab Emirates") }
    end
  end
end
