class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to todos_path
  end
end

private

def todo_params
  #Cambiar completed más adelante
  params.require(:todo).permit(:description, :completed)
end