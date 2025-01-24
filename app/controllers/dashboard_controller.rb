class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @loans = current_user.loans.includes(:book).limit(3)
    @books = current_user.books.limit(3)
    @recent_activity = current_user.loans.order(created_at: :desc).limit(5)
  end
end