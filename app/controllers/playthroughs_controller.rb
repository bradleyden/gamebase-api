class PlaythroughsController < OpenReadController
  before_action :set_playthrough, only: [:show, :update, :destroy]

  # GET /playthroughs
  def index
    @playthroughs = current_user.playthroughs.all

    render json: @playthroughs
  end

  # GET /playthroughs/1
  def show
    render json: @playthrough
  end

  # POST /playthroughs
  def create
    @playthrough = current_user.playthroughs.build(playthrough_params)

    if @playthrough.save
      render json: current_user.playthroughs.all, status: :created
    else
      render json: @playthrough.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playthroughs/1
  def update
    if @playthrough.update(playthrough_params)
      render json: current_user.playthroughs.all
    else
      render json: @playthrough.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playthroughs/1
  def destroy
    @playthrough.destroy
    render json: current_user.playthroughs.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playthrough
      @playthrough = current_user.playthroughs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playthrough_params
      params.require(:playthrough).permit(:game_id, :user_id, :game, :date_started, :date_finished, :time, :completion)
    end
end
