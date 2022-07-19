class TicketsController < ApplicationController

# this is for practice => in your projects, please only create actions that your front end is requesting!!

#Review: Index Action
#Review: Show Action 
#Review: Create action 
#Review: Update action  
#Review: Destroy action  
def index 
    render json: Ticket.all

end 

def show
    ticket = Ticket.find(params[:id])
    render json: ticket, serializer:TicketShowSerializer
end 




# def create
#     user = User.create!(production_params)
#     render json: user, status: :created
# end 

# private

# def production_params
#     params.permit(:name, :email)
# end 

# def find_user
# User.find(params[:id])
# end

#Review: Strong params

end
