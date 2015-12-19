class TablesController < ApplicationController

before_action :authenticate!

  def select
    @tables = Table.all
  end

  def new
    @table = Table.new
    @current_user = User.find(session[:user_id])
  end

  def create
    Table.create(table_params)
    redirect_to tables_path
  end

  private

  def table_params
    params.require(:table).permit(:name, :party_size)
  end

end
