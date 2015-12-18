class TablesController < ApplicationController

  def select
    @tables = Table.all
  end

  def new
    authenticate!
    @table = Table.new
    @current_user = User.find(session[:user_id])
  end

  def create
    authenticate!
    Table.create( table_params )
    redirect_to admin_path
  end

  private

  def table_params
    params.require(:table).permit(:name, :party_size)
  end

end
