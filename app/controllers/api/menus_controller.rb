class Api::MenusController < ApplicationController
	before_action :set_menu, only: [:show]
 
  def index
    @menu = Menu.last
    # render json: @menu
    render json: @menu.productos
    
  end
 
  def show
  end
 
  
 
  private
    def set_menu
      @menu = Menu.find(params[:id])
    end
 
    
end
