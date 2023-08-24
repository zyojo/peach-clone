class Admins::ReservationsController < Admins::ApplicationController
  before_action :authenticate_admin!

  def index
  end
end
