class UsersController < ApplicationController
   def index
        user = User.all
        render json: user
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end
    def create
        user = User.create(user_params)
        if user
            render json: user, status: :created
        else
            render json: {error: "User not found"}, status: :unprocessable_entity
        end
   end
  private

 def user_params
        params.permit(:name, :email, :password)
    end
  end
