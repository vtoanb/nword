require 'csv'
path = Rails.root.join('db', 'bai1.csv')

CSV.foreach(path).with_index do |ln, i|
  next if i.zero?
  word = Word.new(
    simplified: ln[0],
    traditional: ln[1],
    pinyin: ln[2],
    definition: ln[3]
  )
  if word.valid?
    p "saving... #{word}"
    word.save
  end
end

