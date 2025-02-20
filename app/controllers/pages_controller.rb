class PagesController < ApplicationController
  def report
  end

  def search_score
    sbd = params[:sbd]
    @student_score = Rails.cache.fetch("sbd_#{params[:sbd]}", expires_in: 5.minutes) do
      StudentScore.find_by(sbd: sbd)
    end
  end
end
