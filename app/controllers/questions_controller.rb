class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = params[:pepe]   # guardo lo que el usuario escribio en el input(capturado en el params)
    if @response == "I am going to work"
      @answer = "Great!"         # creo variable de instancia answer(la llamo desde answer.html)
    elsif @response.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
