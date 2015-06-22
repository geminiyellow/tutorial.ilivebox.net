class Book < ActiveRecord::Base
  belongs_to :category

  def cover
    "#{cover_url}"
  end

end
