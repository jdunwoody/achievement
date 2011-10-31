require 'spec_helper'

describe "masters/new.html.erb" do
  before(:each) do
    assign(:master, stub_model(Master).as_new_record)
  end

  it "renders new master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => masters_path, :method => "post" do
    end
  end
end
