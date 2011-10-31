require 'spec_helper'

describe "masters/show.html.erb" do
  before(:each) do
    @master = assign(:master, stub_model(Master))
  end

  it "renders attributes in <p>" do
    render
  end
end
