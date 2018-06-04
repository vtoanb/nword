class WordsController < ApplicationController
  def show
    point = rand(Word.count)
    @word = Word.offset(point).first || Word.last
  end
end

