class QuestionsController < ApplicationController
  def ask
    # redirect_to
  end

  def answer
    @questions = params[:questions]
    if @questions == "I am going to work"
      @answer = "Great!"
    elsif @questions && @questions.end_with?("?")
      @answer = "Silly question, get dressed and go to work!."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
