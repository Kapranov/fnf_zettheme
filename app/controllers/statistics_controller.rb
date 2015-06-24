class StatisticsController < ApplicationController
  before_action :authenticate_user!
  layout 'home'

  def statatic
  end
end
