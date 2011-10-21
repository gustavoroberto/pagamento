require 'spec_helper'

describe "conformidades/edit.html.erb" do
  before(:each) do
    @conformidade = assign(:conformidade, stub_model(Conformidade,
      :caixa => "MyString",
      :precesso => "MyString"
    ))
  end

  it "renders the edit conformidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conformidades_path(@conformidade), :method => "post" do
      assert_select "input#conformidade_caixa", :name => "conformidade[caixa]"
      assert_select "input#conformidade_precesso", :name => "conformidade[precesso]"
    end
  end
end
