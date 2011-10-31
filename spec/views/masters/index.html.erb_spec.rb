require 'spec_helper'

describe "masters/index.html.erb" do
  before(:each) do
    assign(:masters, [
      stub_model(Master),
      stub_model(Master)
    ])
  end

  it "renders a list of masters" do
    render
  end
end
