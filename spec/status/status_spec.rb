require 'rails_helper'

feature "Status" do

  scenario "User posts a status with likes to show page" do
      visit root_path
    click_on "New Status"
    fill_in "User", with: "David"
    fill_in "Post", with: "Example"
    fill_in "Likes", with: "1"
    click_on "Create Status"
    expect(page).to have_content "David"
    expect(page).to have_content "Example"
    expect(page).to have_content "1"
  end

  scenario "User posts a status with likes to show page and edits it" do
      visit root_path
    click_on "New Status"
    fill_in "User", with: "David"
    fill_in "Post", with: "Example"
    fill_in "Likes", with: "1"
    click_on "Create Status"
    expect(page).to have_content "David"
    expect(page).to have_content "Example"
    expect(page).to have_content "1"
    click_on "Edit"
    fill_in "User", with: "Stan"
    click_on "Update Status"
    expect(page).to have_content "Stan"
  end

  scenario "User tries to post a blank status and it shows errors" do
      visit root_path
    click_on "New Status"
    fill_in "User", with: ""
    fill_in "Post", with: ""
    fill_in "Likes", with: ""
    click_on "Create Status"
    expect(page).to have_content "User can't be blank"
    expect(page).to have_content "Post can't be blank"
    expect(page).to have_content "Likes can't be blank"
  end
end
