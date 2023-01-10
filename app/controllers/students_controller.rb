class StudentsController < ApplicationController

    def index
        students = Student.find(params[key1: "value1",key2: "value2"])
        render json: students
    end

    def grades
    students = Student.order(grade: :desc)
    render json: students
    end

    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end

    def show
        student = Student.find(id: params[:id])
        render json: student
    end
end

