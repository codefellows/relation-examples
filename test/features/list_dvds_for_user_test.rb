require "test_helper"

feature "List DVDs for a User" do
  scenario "A user has a list of their own DVDs" do
    visit user_dvds_path(users(:two))

    page.text.must_include "Frozen"
    page.text.must_include "The Matrix"
    page.text.must_include "Ghostbusters"
    page.text.must_include "MIBII"
    page.text.wont_include "Daddy Day Care"
  end
end
