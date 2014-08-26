feature "Add a Movie" do
  scenario "As a visitor, I should be able to add a new movie" do
    visit "/movies/new"
    create_a_movie("Raising Arizona")
    expect(page).to have_css("#home")
    expect(page).to have_content("Raising Arizona")
  end

end