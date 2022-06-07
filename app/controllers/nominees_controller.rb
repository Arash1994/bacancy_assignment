class NomineesController < ApplicationController
  before_action :authenticate_account!
  
  def new
    @nominee = NomineeRecord.new
  end

  def create
    @nominee = NomineeRecord.create(nominee_params)
    if @nominee.persisted?
      flash[:notice] = "Nominee added successfully"
      redirect_to dashboard_path
    else
      flash[:alert] = @nominee.errors.full_messages.join(", ")
      redirect_back(fallback_location: new_nominee_path)
    end
  end

  private

    def nominee_params
      params.require(:nominee_record).permit(:nominee_id, :account_id, :relationship, :weightage)
    end
end
