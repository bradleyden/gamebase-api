class PlaythroughsController < ApplicationController
  before_action :set_playthrough, only: [:show, :update, :destroy]

  # GET /playthroughs
  def index
    @playthroughs = Playthrough.all

    render json: @playthroughs
  end

  # GET /playthroughs/1
  def show
    render json: @playthrough
  end

  # POST /playthroughs
  def create
    @playthrough = Playthrough.new(playthrough_params)

    if @playthrough.save
      render json: @playthrough, status: :created, location: @playthrough
    else
      render json: @playthrough.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playthroughs/1
  def update
    if @playthrough.update(playthrough_params)
      render json: @playthrough
    else
      render json: @playthrough.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playthroughs/1
  def destroy
    @playthrough.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playthrough
      @playthrough = Playthrough.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playthrough_params
      params.fetch(:playthrough, {})
    end
end
