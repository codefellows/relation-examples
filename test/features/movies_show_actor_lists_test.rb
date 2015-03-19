require "test_helper"

feature "MoviesShowActorLists" do
  scenario "visiting dvd page displays actors" do
    visit dvd_path(dvds(:mib))
    page.must_have_content "William Smith"
    page.must_have_content "Tommy Lee Jones"
  end
end
