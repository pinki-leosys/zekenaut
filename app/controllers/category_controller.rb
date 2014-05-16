require 'will_paginate/array'
class CategoryController < ApplicationController
  
  
  def index
  	@categories = Category.all
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(params[:category])
    @category.save
    redirect_to :controller=> "category", :action=>"index"  	
  end

  def show
    render "index"
  end

  def home
  end

  def questions
    @questions = Survey::Question.find(:all).paginate(:per_page => 5, :page => params[:page])
  end

  def answer
    result = JSON.parse(params[:results])  
    ques_id = JSON.parse(params[:ques_id]) 
    hash = Hash.new
    hash = Hash[ques_id.zip result]
    
    hash.each do |ques,res| 
        @option = Survey::Answer.where(:question_id => ques).first     
          if (@option.blank?)
            @answer = Survey::Answer.new
            @answer.question_id = ques
            @answer.option_id = res
            @answer.save            
          else  
            @option.update_attributes(option_id: res)
          end
    end
  end
end
