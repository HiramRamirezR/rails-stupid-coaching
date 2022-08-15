class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(message)
    if message.downcase == 'i am going to work right now!'
      ''
    elsif message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don’t care, get dressed and go to work!'
    end
  end
end
