require 'spec_helper'

describe "conformidades/index.html.erb" do
  before(:each) do
    assign(:conformidades, [
      stub_model(Conformidade,
        :caixa => "Caixa",
        :precesso => "Precesso"
      ),
      stub_model(Conformidade,
        :caixa => "Caixa",
        :precesso => "Precesso"
      )
    ])
  end

  it "renders a list of conformidades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Caixa".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Precesso".to_s, :count => 2
  end
end
