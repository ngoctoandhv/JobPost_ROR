require 'test_helper'

class PostJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_job = post_jobs(:one)
  end

  test "should get index" do
    get post_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_post_job_url
    assert_response :success
  end

  test "should create post_job" do
    assert_difference('PostJob.count') do
      post post_jobs_url, params: { post_job: { job_description: @post_job.job_description, job_expried_date: @post_job.job_expried_date, post_priority: @post_job.post_priority, post_title: @post_job.post_title, salary_max: @post_job.salary_max, salary_min: @post_job.salary_min } }
    end

    assert_redirected_to post_job_url(PostJob.last)
  end

  test "should show post_job" do
    get post_job_url(@post_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_job_url(@post_job)
    assert_response :success
  end

  test "should update post_job" do
    patch post_job_url(@post_job), params: { post_job: { job_description: @post_job.job_description, job_expried_date: @post_job.job_expried_date, post_priority: @post_job.post_priority, post_title: @post_job.post_title, salary_max: @post_job.salary_max, salary_min: @post_job.salary_min } }
    assert_redirected_to post_job_url(@post_job)
  end

  test "should destroy post_job" do
    assert_difference('PostJob.count', -1) do
      delete post_job_url(@post_job)
    end

    assert_redirected_to post_jobs_url
  end
end
