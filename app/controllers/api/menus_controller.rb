class Api::MenusController < ApplicationController
	before_action :set_menu, only: [:show]
 
  def index
    @menus = Menu.all
    render json: @menus
  end
 
  def show
  end
 
  
 
  private
    def set_menu
      @menu = Menu.find(params[:id])
    end
 
    
end
