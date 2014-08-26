feature "homepage" do
  scenario "As a user, I should be able to see the home page w site name and tag line" do
    visit "/"
    expect(page).to have_css("#home")
  end

  scenario "As a user, I can link to add a movie" do
    visit "/"
    click_on "Add Movie"
    expect(page).to have_css("#new_movies")
  end

  scenario "As a user, I can see a list of movies that have been added" do
    visit "/"
    click_on "Add Movie"
    create_a_movie("Raising Arizona")
    expect(page).to have_css("#home")
    expect(page).to have_content("Raising Arizona")
  end


end