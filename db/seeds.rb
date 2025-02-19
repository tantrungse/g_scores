require 'smarter_csv'

file_path = Rails.root.join('db', 'diem_thi_thpt_2024.csv')

puts 'Importing student scores from CSV...'

SmarterCSV.process(file_path, { chunk_size: 1000 }) do |array_of_hashes|
  array_of_hashes.each do |row|
    StudentScore.create!(
      sbd: row[:sbd],
      toan: row[:toan].presence&.to_f,
      ngu_van: row[:ngu_van].presence&.to_f,
      ngoai_ngu: row[:ngoai_ngu].presence&.to_f,
      vat_li: row[:vat_li].presence&.to_f,
      hoa_hoc: row[:hoa_hoc].presence&.to_f,
      sinh_hoc: row[:sinh_hoc].presence&.to_f,
      lich_su: row[:lich_su].presence&.to_f,
      dia_li: row[:dia_li].presence&.to_f,
      gdcd: row[:gdcd].presence&.to_f,
      ma_ngoai_ngu: row[:ma_ngoai_ngu]
    )
  end
end

puts 'Import completed successfully!'
