class PagesController < ApplicationController
  def report
    subjects = %i[toan ngu_van ngoai_ngu vat_li hoa_hoc sinh_hoc lich_su dia_li gdcd]

    @score_distribution = {}

    subjects.each do |subject|
      @score_distribution[subject] = {
        excellent: StudentScore.where("#{subject} >= ?", 8).count,
        good: StudentScore.where("#{subject} >= ? AND #{subject} < ?", 6, 8).count,
        average: StudentScore.where("#{subject} >= ? AND #{subject} < ?", 4, 6).count,
        weak: StudentScore.where("#{subject} < ?", 4).count
      }
    end
  end

  def search_score
    sbd = params[:sbd]
    @student_score = Rails.cache.fetch("sbd_#{params[:sbd]}", expires_in: 5.minutes) do
      StudentScore.find_by(sbd: sbd)
    end
  end
end
