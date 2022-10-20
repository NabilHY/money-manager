class ExpensesController < ApplicationController
  def index
    @group = current_user.groups.find(params[:group_id])
    @expenses = @group.expenses.order(created_at: :desc)
    @img = @group.icon
  end

  def new
    @expense = Expense.new
    @groups = current_user.groups.all
    @group = @groups.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @expense = current_user.expenses.new(expense_params)
    respond_to do |format|
      if @expense.save
        redirect_to group_expenses_path
        return
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def expense_params
    params.require(:expense).permit(:name, :amount, :group_id)
  end
end
