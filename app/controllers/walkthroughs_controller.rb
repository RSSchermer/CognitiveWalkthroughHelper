class WalkthroughsController < ApplicationController
  before_filter :authenticate_user!
  
  before_action :set_walkthrough, only: [:show, :edit, :update, :destroy]

  # GET /walkthroughs
  def index
    @walkthroughs = Walkthrough.all
  end

  # GET /walkthroughs/1
  def show
  end

  # GET /walkthroughs/new
  def new
    @walkthrough = Walkthrough.new
  end

  # GET /walkthroughs/1/edit
  def edit
  end

  # POST /walkthroughs
  def create
    @walkthrough = Walkthrough.new(walkthrough_params)

    if @walkthrough.save
      redirect_to @walkthrough, notice: 'Walkthrough was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /walkthroughs/1
  def update
    if @walkthrough.update(walkthrough_params)
      redirect_to @walkthrough, notice: 'Walkthrough was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /walkthroughs/1
  def destroy
    @walkthrough.destroy
    redirect_to walkthroughs_url, notice: 'Walkthrough was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walkthrough
      @walkthrough = Walkthrough.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def walkthrough_params
      params.require(:walkthrough).permit(:description)
    end
end
