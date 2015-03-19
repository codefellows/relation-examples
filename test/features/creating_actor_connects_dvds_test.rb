require "test_helper"

feature "CreatingActorConnectsDvds" do
  scenario "Adding an actor associates with an existing DVD" do
    visit new_actor_path

    fill_in :Name, with: "Rip Torn"
    fill_in :Yob, with: 1931
    fill_in :Awards, with: "No"
    check :mib
    check :mibii
    click_on "Create Actor"

    page.must_have_content "Rip Torn"
    page.must_have_content "MIB"
    page.must_have_content "MIBII"
    page.wont_have_content "Matrix"
  end
end
