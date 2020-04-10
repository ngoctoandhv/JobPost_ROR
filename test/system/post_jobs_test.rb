require "application_system_test_case"

class PostJobsTest < ApplicationSystemTestCase
  setup do
    @post_job = post_jobs(:one)
  end

  test "visiting the index" do
    visit post_jobs_url
    assert_selector "h1", text: "Post Jobs"
  end

  test "creating a Post job" do
    visit post_jobs_url
    click_on "New Post Job"

    fill_in "Job description", with: @post_job.job_description
    fill_in "Job expried date", with: @post_job.job_expried_date
    fill_in "Post priority", with: @post_job.post_priority
    fill_in "Post title", with: @post_job.post_title
    fill_in "Salary max", with: @post_job.salary_max
    fill_in "Salary min", with: @post_job.salary_min
    click_on "Create Post job"

    assert_text "Post job was successfully created"
    click_on "Back"
  end

  test "updating a Post job" do
    visit post_jobs_url
    click_on "Edit", match: :first

    fill_in "Job description", with: @post_job.job_description
    fill_in "Job expried date", with: @post_job.job_expried_date
    fill_in "Post priority", with: @post_job.post_priority
    fill_in "Post title", with: @post_job.post_title
    fill_in "Salary max", with: @post_job.salary_max
    fill_in "Salary min", with: @post_job.salary_min
    click_on "Update Post job"

    assert_text "Post job was successfully updated"
    click_on "Back"
  end

  test "destroying a Post job" do
    visit post_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post job was successfully destroyed"
  end
end
