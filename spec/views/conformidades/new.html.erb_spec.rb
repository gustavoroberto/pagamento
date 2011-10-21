require 'spec_helper'

describe "conformidades/new.html.erb" do
  before(:each) do
    assign(:conformidade, stub_model(Conformidade,
      :caixa => "MyString",
      :precesso => "MyString"
    ).as_new_record)
  end

  it "renders new conformidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conformidades_path, :method => "post" do
      assert_select "input#conformidade_caixa", :name => "conformidade[caixa]"
      assert_select "input#conformidade_precesso", :name => "conformidade[precesso]"
    end
  end
end
