require 'rails_helper'

RSpec.describe "appeals/new", type: :view do
  before(:each) do
    assign(:appeal, Appeal.new(
      title: "MyString",
      description: "MyText",
      status: "MyString"
    ))
  end

  it "renders new appeal form" do
    render

    assert_select "form[action=?][method=?]", appeals_path, "post" do

      assert_select "input[name=?]", "appeal[title]"

      assert_select "textarea[name=?]", "appeal[description]"

      assert_select "input[name=?]", "appeal[status]"
    end
  end
end
