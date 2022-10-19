class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
    # @expenses = @group.expenses
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
  end

  def destroy
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end

end
