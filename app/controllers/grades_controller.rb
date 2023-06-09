class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :destroy]

  # GET /grades
  def index
    if !user_signed_in?
      redirect_to user_session_path
    else 
      @grades = Grade.all
      if params[:sort_order] == 'asc'
        @grades = @grades.order('student_grade ASC')
        puts "Sort order: #{params[:sort_order]}"
        puts "Sorted grades: #{@grades.inspect}"
      elsif params[:sort_order] == 'desc'
        @grades = @grades.order('student_grade DESC')
        puts "Sort order: #{params[:sort_order]}"
        puts "Sorted grades: #{@grades.inspect}"
      end
    end
  end

  # GET /grades/1
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      redirect_to @grade, notice: 'Grade was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grades/1
  def destroy
    if current_user.role_id == 1
      @grade.destroy
      redirect_to grades_url, notice: 'Grade was successfully destroyed.'
    else
      redirect_to grades_url, notice: 'You do not have permission to destroy grade.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:student_id, :student_name, :student_grade)
    end
end
