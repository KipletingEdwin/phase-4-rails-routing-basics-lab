class StudentsController < ApplicationController
    def index 
        allData = Student.all
        render json: allData
    end

    def grades 
       dataO =  Student.order(grade: :desc)
       render json: dataO
    end
end
