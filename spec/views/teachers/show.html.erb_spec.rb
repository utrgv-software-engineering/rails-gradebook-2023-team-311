require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    assign(:teacher, Teacher.create!(
      name: "Name",
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
