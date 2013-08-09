class MyUsersController < ApplicationController
  # GET /my_users
  # GET /my_users.json
  def index
    @my_users = MyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @my_users }
    end
  end

  # GET /my_users/1
  # GET /my_users/1.json
  def show
    @my_user = MyUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @my_user }
    end
  end

  # GET /my_users/new
  # GET /my_users/new.json
  def new
    @my_user = MyUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @my_user }
    end
  end

  # GET /my_users/1/edit
  def edit
    @my_user = MyUser.find(params[:id])
  end

  # POST /my_users
  # POST /my_users.json
  def create
    @my_user = MyUser.new(params[:my_user])

    respond_to do |format|
      if @my_user.save
        format.html { redirect_to @my_user, notice: 'My user was successfully created.' }
        format.json { render json: @my_user, status: :created, location: @my_user }
      else
        format.html { render action: "new" }
        format.json { render json: @my_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /my_users/1
  # PUT /my_users/1.json
  def update
    @my_user = MyUser.find(params[:id])

    respond_to do |format|
      if @my_user.update_attributes(params[:my_user])
        format.html { redirect_to @my_user, notice: 'My user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @my_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_users/1
  # DELETE /my_users/1.json
  def destroy
    @my_user = MyUser.find(params[:id])
    @my_user.destroy

    respond_to do |format|
      format.html { redirect_to my_users_url }
      format.json { head :no_content }
    end
  end
end
