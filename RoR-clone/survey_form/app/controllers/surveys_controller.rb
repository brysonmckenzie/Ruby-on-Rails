class SurveysController < ApplicationController
  def main
    
    

  end

  def result

    @result = Form.all



  end

  def create
    @survey = Form.create(name: params[:name], location: params[:location], language: params[:language], comment: params[:comments])

    redirect_to '/surveys/result'
  end
end
