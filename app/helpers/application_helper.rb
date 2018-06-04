module ApplicationHelper
  def hash(key)
    Digest::MD5.hexdigest(key)
  end
end
