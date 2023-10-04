class RankingsController < ApplicationController
  skip_before_action :require_login
  
  def index
    @question_ranking = Question.limit(5).includes(:music).find(Like.group(:question_id).order('count(question_id) desc').pluck(:question_id))
  end
end