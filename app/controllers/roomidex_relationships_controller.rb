class RoomidexRelationshipsController < ApplicationController
  before_action :set_roomidex_relationship, only: [:show, :edit, :update, :destroy]
  before_action :set_roomidex_relationships, only: [:index]

  # This class was created with scaffold, currently only need create and destroy,
  # so commenting out all else. 

  # # GET /roomidex_relationships
  # # GET /roomidex_relationships.json
  def index
  end

  # GET /roomidex_relationships/1
  # GET /roomidex_relationships/1.json
  def show
  end

  # # GET /roomidex_relationships/new
  # def new
  #   @roomidex_relationship = RoomidexRelationship.new
  # end

  # # GET /roomidex_relationships/1/edit
  # def edit
  # end

  # POST /roomidex_relationships
  # POST /roomidex_relationships.json
  def create
    @roomidex_relationship = current_user.roomidex_relationships.build(
      :friend_id => params[:friend_id]
    )

    respond_to do |format|
      if @roomidex_relationship.save
        format.html { 
          redirect_to @roomidex_relationship, 
          notice: 'Roomidex relationship was successfully created.' 
        }
        format.json { 
          render action: 'show', 
          status: :created, 
          location: @roomidex_relationship 
        }
      else
        format.html { 
          flash[:error] = "Unable to create Roomidex connection." 
          redirect_to :back
        }
        format.json { 
          render json: @roomidex_relationship.errors, 
          status: :unprocessable_entity 
        }
      end
    end
  end

  # PATCH/PUT /roomidex_relationships/1
  # # PATCH/PUT /roomidex_relationships/1.json
  # def update
  #   respond_to do |format|
  #     if @roomidex_relationship.update(roomidex_relationship_params)
  #       format.html { redirect_to @roomidex_relationship, notice: 'Roomidex relationship was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @roomidex_relationship.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /roomidex_relationships/1
  # DELETE /roomidex_relationships/1.json
  def destroy
    @roomidex_relationship.destroy
    respond_to do |format|
      format.html { redirect_to roomidex_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomidex_relationship
      @roomidex_relationship = RoomidexRelationship.find(params[:id])
    end

    def set_roomidex_relationships
      @roomidex_relationships = RoomidexRelationship.where(
        "user_id = ? OR friend_id = ?", 
        current_user.id, 
        current_user.id
      )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomidex_relationship_params
      params.require(:roomidex_relationship).permit(:user_id, :friend_id)
    end
end
