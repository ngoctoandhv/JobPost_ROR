class PostJobsController < ApplicationController
  before_action :set_post_job, only: [:show, :edit, :update, :destroy]

  # GET /post_jobs
  # GET /post_jobs.json
  def index
    @post_jobs = PostJob.all
  end

  # GET /post_jobs/1
  # GET /post_jobs/1.json
  def show
  end

  # GET /post_jobs/new
  def new
    @post_job = PostJob.new
  end

  # GET /post_jobs/1/edit
  def edit
  end

  # POST /post_jobs
  # POST /post_jobs.json
  def create
    @post_job = PostJob.new(post_job_params)

    respond_to do |format|
      if @post_job.save
        format.html { redirect_to @post_job, notice: 'Post job was successfully created.' }
        format.json { render :show, status: :created, location: @post_job }
      else
        format.html { render :new }
        format.json { render json: @post_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_jobs/1
  # PATCH/PUT /post_jobs/1.json
  def update
    respond_to do |format|
      if @post_job.update(post_job_params)
        format.html { redirect_to @post_job, notice: 'Post job was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_job }
      else
        format.html { render :edit }
        format.json { render json: @post_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_jobs/1
  # DELETE /post_jobs/1.json
  def destroy
    @post_job.destroy
    respond_to do |format|
      format.html { redirect_to post_jobs_url, notice: 'Post job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_job
      @post_job = PostJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_job_params
      params.require(:post_job).permit(:post_priority, :salary_min, :salary_max, :post_title, :job_description, :job_expried_date)
    end
end
