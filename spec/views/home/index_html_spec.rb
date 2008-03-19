require File.join(File.dirname(__FILE__),'..','..','spec_helper')

describe "/home" do
  before(:each) do
    @controller,@action = get("/home")
    @body = @controller.body
  end

  it "should mention Home" do
    @body.should match(/Home/)
  end
end