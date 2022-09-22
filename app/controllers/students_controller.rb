class StudentsController < ApplicationController
    def index 
        allData = Student.all
        render json: allData
    end

    def grades 
       dataO =  Student.order(grade: :desc)
       render json: dataO
    end

    def highest_grade 
        ord =  Student.order(grade: :desc)
        ord1 = ord.first
        render json: ord1
    end
end
