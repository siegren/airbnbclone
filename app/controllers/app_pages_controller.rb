class AppPagesController < ApplicationController
  def index
  	@rooms = Room.take(4)
  	@room = Room.new
  end

  def user_rooms
  	@rooms = Room.where("user_id = '#{current_user.id}'")
  end

  def manage_account

  end

  def search
    if !params[:txtsearch].strip.empty?
    @check = Room.near(params[:txtsearch], 50)
    if !@check.empty?
      @rooms = @check
    else
      @rooms = Room.all
    end
  else
    @rooms = Room.all
  end
  	# @rooms = Room.where("location LIKE ? or name LIKE ?", "%#{params[:txtsearch]}%", "%#{params[:txtsearch]}%")
  end

  def room_profile
  	@room = Room.find(params[:id])
  	@host = User.find(@room.user_id.to_s)

    @comments = Review.where("room_id = '#{params[:id]}'")

  end 

  def comment
    @comment = Review.create(comment: params[:comment_text], user_id: current_user.id, room_id: params[:id])
    @comment.save
    redirect_to room_profile_path(params[:id])
  end

  def book

  	check_in = Date.new(params[:check_in]['date(1i)'].to_i, params[:check_in]['date(2i)'].to_i, params[:check_in]['date(3i)'].to_i)
	check_out = Date.new(params[:check_out]['date(1i)'].to_i, params[:check_out]['date(2i)'].to_i, params[:check_out]['date(3i)'].to_i)
  	@new_book = Booking.create(check_in: check_in, check_out: check_out, guest: params[:guest], room_id: params[:id], user_id: current_user.id)
  	@new_book.save
    # format.html { redirect_to room_profile_path(params[:id]), notice: 'Room was successfully created.' }
  	redirect_to room_profile_path(params[:id])

  end

  def my_bookings
  	@bookings = Booking.where("user_id = #{current_user.id}")
  end

end
