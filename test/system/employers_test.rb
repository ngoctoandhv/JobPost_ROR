require "application_system_test_case"

class EmployersTest < ApplicationSystemTestCase
  setup do
    @employer = employers(:one)
  end

  test "visiting the index" do
    visit employers_url
    assert_selector "h1", text: "Employers"
  end

  test "creating a Employer" do
    visit employers_url
    click_on "New Employer"

    fill_in "Company description", with: @employer.company_description
    fill_in "Company logo", with: @employer.company_logo
    fill_in "Company name", with: @employer.company_name
    fill_in "Company size", with: @employer.company_size
    click_on "Create Employer"

    assert_text "Employer was successfully created"
    click_on "Back"
  end

  test "updating a Employer" do
    visit employers_url
    click_on "Edit", match: :first

    fill_in "Company description", with: @employer.company_description
    fill_in "Company logo", with: @employer.company_logo
    fill_in "Company name", with: @employer.company_name
    fill_in "Company size", with: @employer.company_size
    click_on "Update Employer"

    assert_text "Employer was successfully updated"
    click_on "Back"
  end

  test "destroying a Employer" do
    visit employers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employer was successfully destroyed"
  end
end
