feature "Add a Movie" do
  scenario "As a visitor, I should be able to add a new movie" do
    visit "/movies/new"
    create_a_movie("Raising Arizona")
    expect(page).to have_css("#home")
    expect(page).to have_content("Raising Arizona")
  end

  scenario "As a visitor, I can not add a movie w/out a name" do
    visit "/movies/new"
    fill_in "Name", with: ""
    fill_in "Year", with: "2012"
    fill_in "Synopsis", with: "summary"
    click_on "Create Movie"
    expect(page).to have_css("#new_movies")
    expect(page).to have_content("Name can't be blank")
  end

  scenario "As a visitor, I can not add a movie w/out a year" do
    visit "/movies/new"
    fill_in "Name", with: "Raising Arizona"
    fill_in "Year", with: ""
    fill_in "Synopsis", with: "summary"
    click_on "Create Movie"
    expect(page).to have_css("#new_movies")
    expect(page).to have_content("Year can't be blank")
    expect(page).to have_content("Year is not a number")

  end


end