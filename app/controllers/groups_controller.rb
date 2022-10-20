class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
    # @expenses = @group.expenses
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)
    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_path }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end

end
