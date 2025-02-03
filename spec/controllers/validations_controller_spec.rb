require 'rails_helper'

RSpec.describe "ValidationsController", type: :request do
  let(:phone_number_url) { "/validations/phone_number" }

  describe "#GET phone_number" do
    let(:params) { { phone_number: "62913242", country_alpha2: country_alpha2 } }

    context "phone number is valid" do
      let(:country_alpha2) { "HK" }
      it "returns a 200 response" do
        get phone_number_url, params: params
        expect(response.status).to eq(200)
      end
    end

    context "phone number is valid" do
      let(:country_alpha2) { "GB" }
      it "returns a 400 response" do
        get phone_number_url, params: params
        expect(response.status).to eq(400)
      end
    end
  end
end
