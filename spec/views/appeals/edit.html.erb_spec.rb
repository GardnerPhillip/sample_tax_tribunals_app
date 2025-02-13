require 'rails_helper'

RSpec.describe "appeals/edit", type: :view do
  let(:appeal) {
    Appeal.create!(
      title: "MyString",
      description: "MyText",
      status: "MyString"
    )
  }

  before(:each) do
    assign(:appeal, appeal)
  end

  it "renders the edit appeal form" do
    render

    assert_select "form[action=?][method=?]", appeal_path(appeal), "post" do

      assert_select "input[name=?]", "appeal[title]"

      assert_select "textarea[name=?]", "appeal[description]"

      assert_select "input[name=?]", "appeal[status]"
    end
  end
end
