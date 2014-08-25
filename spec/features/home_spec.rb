feature "homepage" do
  scenario "As a user, I should be able to see the home page w site name and tag line" do
    visit "/"
    expect(page).to have_css("#home")
  end
end