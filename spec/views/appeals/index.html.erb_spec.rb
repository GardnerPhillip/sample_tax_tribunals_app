require 'rails_helper'

RSpec.describe "appeals/index", type: :view do
  before(:each) do
    assign(:appeals, [
      Appeal.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      ),
      Appeal.create!(
        title: "Title",
        description: "MyText",
        status: "Status"
      )
    ])
  end

  it "renders a list of appeals" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
  end
end
