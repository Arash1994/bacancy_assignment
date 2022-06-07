class DashboardController < ApplicationController
  before_action :authenticate_account!
  
  def index
    @nominated_list = NomineeRecord.where(nominee_id: current_account.id)
  end
end
