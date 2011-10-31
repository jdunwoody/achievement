require 'spec_helper'

describe "masters/edit.html.erb" do
  before(:each) do
    @master = assign(:master, stub_model(Master))
  end

  it "renders the edit master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => masters_path(@master), :method => "post" do
    end
  end
end
