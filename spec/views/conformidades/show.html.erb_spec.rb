require 'spec_helper'

describe "conformidades/show.html.erb" do
  before(:each) do
    @conformidade = assign(:conformidade, stub_model(Conformidade,
      :caixa => "Caixa",
      :precesso => "Precesso"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Caixa/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Precesso/)
  end
end
