class Task < ActiveRecord::Base
  belongs_to :user
  before_save :default_values
  
  def default_values
    self.status = false if self.status.nil?
  end

end
