class RoomidexRequestsController < ApplicationController
  before_action :set_roomidex_request, only: [:show, :edit, :update, :destroy]

  # GET /roomidex_requests
  # GET /roomidex_requests.json
  def index
    @roomidex_requests = RoomidexRequest.all
  end

  # GET /roomidex_requests/1
  # GET /roomidex_requests/1.json
  def show
  end

  # GET /roomidex_requests/new
  def new
    @roomidex_request = RoomidexRequest.new
  end

  # GET /roomidex_requests/1/edit
  def edit
  end

  # POST /roomidex_requests
  # POST /roomidex_requests.json
  def create
    @roomidex_request = current_user.roomidex_requests.build(
      :receiver_id => params[:receiver_id]
    )

    respond_to do |format|
      if @roomidex_request.save
        format.html { 
          redirect_to @roomidex_request, 
          notice: 'Roomidex request was successfully sent.' 
        }
        format.json { 
          render action: 'show', 
          status: :created, 
          location: @roomidex_request 
        }
      else
        format.html { 
          flash[:error] = "Unable to send Roomidex request." 
          redirect_to :back
        }
        format.json { 
          render json: @roomidex_request.errors, 
          status: :unprocessable_entity 
        }
      end
    end
  end

  # PATCH/PUT /roomidex_requests/1
  # PATCH/PUT /roomidex_requests/1.json
  def update
    respond_to do |format|
      if @roomidex_request.update(roomidex_request_params)
        format.html { redirect_to @roomidex_request, notice: 'Roomidex request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @roomidex_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomidex_requests/1
  # DELETE /roomidex_requests/1.json
  def destroy
    @roomidex_request.destroy
    respond_to do |format|
      format.html { redirect_to roomidex_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomidex_request
      @roomidex_request = RoomidexRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomidex_request_params
      params.require(:roomidex_request).permit(:user_id, :receiver_id, :accepted, :ignored)
    end
end
