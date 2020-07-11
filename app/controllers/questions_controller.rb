class QuestionsController < ApplicationController
 
  def ask
  end

  def answer
    @coach_answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:question] == "I am going to work"
      @coach_answer = @coach_answer[0]
    elsif params[:question].include?("?")
      @coach_answer = @coach_answer[1]
    else
      @coach_answer = @coach_answer[2]
    end
  end

end
