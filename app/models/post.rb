class Post < ActiveRecord::Base
  validates_presence_of :title
  before_save :change_title

  def change_title
    self.title = "[Blog] #{self.title}"
  end
end
