require "test_helper"

feature "Home Page Lists All Dvds" do
  scenario "show some movies" do
    visit root_path
    page.must_have_content "Frozen"
    page.must_have_content "MIBII"
  end
end
