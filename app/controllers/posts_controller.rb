class PostsController < ActionController::Base
  http_basic_authenticate_with :name => "tripcase", :password => "teamblue" 
  def new
  	@post = Post.new
  end

  def create
    @post = Post.new(post_params)
    render @post
  end

  def post_params
      params[:post].permit(:email_address, :itinerary_reference, :name, :airline_code, :confirmation_number, :flight_number, :arrival_date_time, :departure_date_time, :departure_airport, :arrival_airport)
   end
end