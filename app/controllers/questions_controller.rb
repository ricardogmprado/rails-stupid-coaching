class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(message)
    if message.include? '?'
      'Silly question, get dressed and go to work!'
    elsif message == 'I am going to work'
      'Great'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
