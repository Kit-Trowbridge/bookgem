class LoansController < ApplicationController
  def index
    @loans = Loan.all
  end

  def new
    @loan = Loan.new
  end

  def create
    @users = User.all
    @book = Book.find(params[:book_id])
    @loan = Loan.new(loan_params)
    @loan.book = @car
    if @loan.save
      # need this even though it doesn't bring to new page
      redirect_to book_loans_path(@book)
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
