class FacilitiesController < ApplicationController
  before_action :set_facility, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /facilities
  # GET /facilities.json
  def index
    @facilities = Facility.with_role(:admin, @user)
    # @facilities = Facility.all
  end

  # GET /facilities/1
  # GET /facilities/1.json
  def show
  end

  # GET /facilities/new
  def new
    @facility = Facility.new
    @facility.build_address
  end

  # GET /facilities/1/edit
  def edit

  end

  # POST /facilities
  # POST /facilities.json
  def create
    @facility = Facility.create(facility_params)
    @facility.user_id = @user.id
    
    respond_to do |format|
      if @facility.save
        format.html { redirect_to @facility, notice: 'Facility was successfully created.' }
        format.json { render :show, status: :created, location: @facility }
        @user.add_role :admin, Facility.where(user_id: @user.id).last
      else
        format.html { render :new }
        format.json { render json: @facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facilities/1
  # PATCH/PUT /facilities/1.json
  def update
    respond_to do |format|
      if @facility.update(facility_params)
        format.html { redirect_to @facility, notice: 'Facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility }
      else
        format.html { render :edit }
        format.json { render json: @facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facilities/1
  # DELETE /facilities/1.json
  def destroy
    @facility.destroy
    respond_to do |format|
      format.html { redirect_to facilities_path, notice: 'Facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
      @facility = Facility.find(params[:id])
    end
    # Sets user variable to the current loggedin user.
    def set_user
      @user = current_user
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_params
      params.require(:facility).permit(:id, :name, :description, address_attributes: [:id, :address1, :address2, :city, :state, :zip_code, :phone])
    end
end
