# encoding: utf-8

require 'spec_helper'
require 'json'

describe Omniauth::Wrapper::Provider::Facebook do

  let!(:auth_hash) {
    File.open(File.join(File.dirname(__FILE__), "../fixtures/facebook_data.json")) do |f|
      JSON.load(f)
    end
  }

  it "should be a Module" do
    Omniauth::Wrapper::Provider.should be_a(Module)
  end

  context "facebook" do
    subject { Omniauth::Wrapper.init(auth_hash) }

    it { should be_a(Omniauth::Wrapper::Provider::Facebook) }
    its(:auth_hash) { should eq auth_hash }
    its(:uid) { should eq "100000730417342" }
    its(:provider) { should eq "facebook" }
    its(:access_token) { should eq "AAAC1N4JHfIcBAIDYp0QLdyCMX9LenAS6KNDrGNZAOQ8bOYObHSg3tgxzvEVNLOTCZBOHDUCcHDxINgluKw52CLxMMZAxHaPXqAwZABMqhgZDZD" }
    its(:token_expires_at) { should eq Time.at("1369429974".to_i).to_datetime }
  end
end
