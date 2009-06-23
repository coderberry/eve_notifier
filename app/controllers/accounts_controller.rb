class AccountsController < ApplicationController
  
  before_filter :authenticate
  
  def index
    @accounts = current_user.accounts
  end

  def new
    @account = current_user.accounts.build
  end

  def create
    @account = current_user.accounts.build(params[:account])
    if @account.save
      flash[:notice] = "Account Added Successfully"
      redirect_to accounts_path
    else
      render :action => "new"
    end
  end

  def edit
    @account = current_user.accounts.find(params[:id])
  end

  def update
    @account = current_user.accounts.find(params[:id])
    if @account.update_attributes(params[:account])
      flash[:notice] = "Updated Added Successfully"
      redirect_to accounts_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @account = current_user.accounts.find(params[:id])
    @account.destroy
    flash[:notice] = "Deleted Account Successfully"
    redirect_to accounts_path
  end
  
  def show
    @account = current_user.accounts.find(params[:id])
    api = Reve::API.new(@account.eve_user_id, @account.eve_api_key)
    characters = api.characters
    @data = Hash.new
    characters.each do |char|
      @data[char.id] = { :character => char, :skill_in_training => api.skill_in_training(:characterid => char.id)}
    end
  end

end
