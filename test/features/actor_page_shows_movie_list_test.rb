require "test_helper"

feature "ActorPageShowsMovieList" do
  scenario "visiting actor page displays movie titles" do
    visit actor_path(actors(:will))
    page.must_have_content "MIB"
    page.must_have_content "MIBII"
  end
end
