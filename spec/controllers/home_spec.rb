require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "Homes Controller", "index action" do
  before(:each) do
    @controller = Homes.build(fake_request)
    @controller.dispatch('index')
  end
end