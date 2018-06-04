class HashingController < ApplicationController
  def index
    @hashes = %w(1 2 3 4 5 6 7 8 9)
    @hashes.shuffle!
  end
end

