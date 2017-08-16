class StudentsController < ApplicationController
  def student_page
    @school = Dojo.find(params[:dojo_id])
    @dojo_students = @school.students 
  end

  def show

    @loc = Student.find(params[:id])

  end

  def new

    @dojos = Dojo.find(params[:dojo_id])
    

  end

  def create
 
     student = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:dojo_id])

     redirect_to "/dojos/#{params[:dojo_id]}/students/#{student.id}"

    

  end
end
