class UsersController < ApplicationController


    def show
        users = User.find_by(id: params[:id])
        render json: users,include: :items, status: :ok
    # rescue ActiveRecord::RecordNotFound, with: not_found_response
    end
end

# private
# def not_found_response
#     render json: {error: "User not found"}, status: :not_found
# end
