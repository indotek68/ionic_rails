class TodosController < ApplicationController

  respond_to :json, :html

  def index
  	if params[:callback]
	# format.js { 
	render :json => {:todos => Todo.all.to_json}, :callback => params[:callback] 

  	# respond_with (@todos = Todo.all), callback: params[:callback]
  	else
  	respond_with (@todos = Todo.all)	
  	end
  	
  end

  def create
  	respond_with Todo.create(todo_params)
  end

  private
	def render_layout_if_html
      if request.format.symbol == :html
        render "layouts/application"
      end
    end

  	def todo_params
  		params.require(:todo).permit(:title, :description)
  	end
end
