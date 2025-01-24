class LoansController < ApplicationController
  before_action :set_book, only: [:new, :create]

  def index
    @loans = current_user.loans.sort_by { |loan| loan.end_date }
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)
    @loan.book = @book
    @loan.user = current_user
    if @loan.save
      redirect_to loans_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def loan_params
    params.require(:loan).permit(:start_date, :end_date)
  end
end
