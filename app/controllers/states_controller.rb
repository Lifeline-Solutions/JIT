class StatesController < ApplicationController
  before_action :set_donation
  before_action :set_state, only: %i[show edit update destroy]

  # GET donations/1/states
  def index
    @states = @donation.states
  end

  # GET donations/1/states/1
  def show; end

  # GET donations/1/states/new
  def new
    @state = @donation.states.build
  end

  # GET donations/1/states/1/edit
  def edit; end

  # POST donations/1/states
  def create
    @state = @donation.states.build(state_params)

    if @state.save
      redirect_to([@donation], notice: 'State was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT donations/1/states/1
  def update
    if @state.update_attributes(state_params)
      redirect_to([@state.donation, @state], notice: 'State was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE donations/1/states/1
  def destroy
    @state.destroy

    redirect_to donation_states_url(@donation)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_donation
    @donation = Donation.find(params[:donation_id])
  end

  def set_state
    @state = @donation.states.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def state_params
    params.require(:state).permit(:name)
  end
end
