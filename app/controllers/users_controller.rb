class UsersController < ApplicationController
	before_action :authenticate_employee!
	before_action :set_employee, only: [:show, :edit, :update, :destroy]
	load_and_authorize_resource

	def index
		@employees = Employee.all	
	end

	def new
		@employee = Employee.new
	end
	def create
	  @employee = Employee.new(employee_params)
      respond_to do |format|
	      if @employee.save
	        format.html { redirect_to @employee, notice: 'El empleado ha sido registrado.' }
	        format.json { render :show, status: :created, location: @employee }
	      else
	        format.html { render :new }
	        format.json { render json: @employee.errors, status: :unprocessable_entity }
	      end
      end
	end

	def edit
	end

  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to users_url, notice: 'El empleado #{@employee.nombre.humanize} ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  private
	def set_employee
      @employee = Employee.find(params[:id])
    end
    def employee_params
      params.require(:employee).permit(:username, :nombre, :role, :activo, :email, :password, :password_confirmation)
    end
end
