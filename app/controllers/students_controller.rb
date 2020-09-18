class StudentsController < ApplicationController

    def index
        
        @students = Student.all
        render "index"

    end

    def show

        @student = Student.find(params[:id])
        render "show"

    end
   
    def new 

        @student = Student.new
        render "new"

    end
    
    def create

        @student = Student.find_or_create_by(params_restrictions(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student.id)

    end

    def edit

        @student = Student.find(params[:id])
        render 'edit'

    end

    def update

        @student = Student.find(params[:id])
        @student.update(params_restrictions(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def params_restrictions(*args)

        params.require(:student).permit(*args)

    end

end
