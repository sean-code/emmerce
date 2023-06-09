
class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    
    # GET /todos
    def index
        @todos = Todo.all
        render json: @todos, except: [:created_at, :updated_at], status: :ok
    end

    # GET /todos/1
    def show
        render json: @todo,  except: [:created_at, :updated_at], status: :ok
    end

    # POST /todos
    def create
      @todo = Todo.new(todo_params)
  
      if @todo.save
        render json: @todo, status: :created
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /todos/1
    def update
      if @todo.update(todo_params)
        render json: @todo
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /todos/1
    def destroy
      @todo.destroy
      head :no_content
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_todo
        @todo = Todo.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def todo_params
        params.require(:todo).permit(:title, :description)
      end
  end
  