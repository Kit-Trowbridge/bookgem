class LoansController < ApplicationController
  def index
    @loans = Loan.all
  end

  def new
    @loan = Loan.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @loan = Loan.new(loan_params)
    @loan.book = @book
    if @loan.save
      redirect_to loans_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # how do I make it so that the user is automatic (signed in - shouldn't be something to select)
  def loan_params
    params.require(:loan).permit(:start_date, :end_date, :user_id)
  end
end
