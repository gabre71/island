class DepartmentsController < ApplicationController
  load_and_authorize_resource
  # GET /departments
  # GET /departments.json
  def index
    @departments = Department.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @departments }
    end
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @department }
    end
  end

  # GET /departments/new
  # GET /departments/new.json
  def new
    @department = Department.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @department }
    end
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(params[:department])

    respond_to do |format|
      if @department.save
        format.html { redirect_to departments_path, notice: 'Department was successfully created.' }
        format.json { render json: @department, status: :created, location: @department }
      else
        format.html { render action: "new" }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /departments/1
  # PUT /departments/1.json
  def update

    respond_to do |format|
      if @department.update_attributes(params[:department])
        format.html { redirect_to departments_path, notice: 'Department was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy

    respond_to do |format|
      format.html { redirect_to departments_url }
      format.json { head :no_content }
    end
  end

  def add_user
    @department= Department.find(params[:department_id])
    @user = User.find(params[:add_user][:user])
    puts "@department #{@department.inspect}"
    puts "@user #{@user.inspect}"
    @department.add_user(@user)
    respond_to do |format|
      format.html { redirect_to edit_department_path(@department) }
      format.json { head :no_content }
    end
  end
  
  def remove_user
    @department= Department.find(params[:department_id])
    @user = User.find(params[:user])
    @conn = @department.user_departments.find_by_user_id(@user)
    @conn.destroy
    respond_to do |format|
      format.html { redirect_to edit_department_path(@department) }
      format.json { head :no_content }
    end
  end
end
