class TablesController < ApplicationController

before_action :authenticate!

  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
    @current_user = User.find(session[:user_id])
  end

  def create
    table = Table.create(table_params)
    if table.save
      session[:user_id] = user.id
      redirect_to tables_path
    else
      flash[:error] = table.errors.full_messages
      redirect_to new_table_path
    end
  end

  private

  def table_params
    params.require(:table).permit(:name, :party_size)
  end

end
