require "rails_helper"

feature "prescriptions" do 
  let(:user) { FactoryGirl.create(:user) }
  scenario "adding a prescription" do 
    visit("/")
    page.should have_content "Log in"
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password

    click_button "Log in"
    page.should have_content "This is a calendar page"

    click_link "Add prescription"
    page.should have_content "Create a New Prescription"
    fill_in "prescription[drug_name]", with: "Drug 1"
    fill_in "prescription[dose_count]", with: "30"
    click_button "Save"

    page.should have_content "Drug 1"
  end
end
