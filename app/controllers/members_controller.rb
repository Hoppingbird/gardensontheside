class MembersController < ApplicationController
  def index
    @members = User.all
    @user = current_user
  end

  def show
    @member = User.find(params[:id])
  end

  def edit
    redirect_to members_path unless current_user.admin?
    @user = User.find(params[:id])
    @user.update_attribute(:role, params[:role])
    redirect_to members_path
  end
end
