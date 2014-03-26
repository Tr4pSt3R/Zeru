class AlphaUsersController < ApplicationController
  before_action :set_alpha_user, only: [:show, :edit, :update, :destroy]

  # GET /alpha_users
  # GET /alpha_users.json
  def index
    # @alpha_users = AlphaUser.all
    @alpha_user = AlphaUser.new
  end

  # GET /alpha_users/1
  # GET /alpha_users/1.json
  def show
  end

  # GET /alpha_users/new
  def new
    @alpha_user = AlphaUser.new
  end

  # GET /alpha_users/1/edit
  def edit

  end

  # POST /alpha_users
  # POST /alpha_users.json
  def create
    @alpha_user = AlphaUser.new(alpha_user_params)

    respond_to do |format|
      if @alpha_user.save
        format.html { redirect_to root_url, notice: 'Thank You for your showing your interest' }
        format.json { render action: 'index', status: :created, location: @alpha_user }
      else
        format.html { render action: 'index' }
        format.json { render json: @alpha_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_users/1
  # PATCH/PUT /alpha_users/1.json
  def update
    respond_to do |format|
      if @alpha_user.update(alpha_user_params)
        format.html { redirect_to @alpha_user, notice: 'Alpha user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alpha_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_users/1
  # DELETE /alpha_users/1.json
  def destroy
    @alpha_user.destroy
    respond_to do |format|
      format.html { redirect_to alpha_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_user
      @alpha_user = AlphaUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_user_params
      params.require(:alpha_user).permit(:email)
    end
end
