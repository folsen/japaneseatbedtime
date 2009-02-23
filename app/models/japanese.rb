class Japanese < ActiveRecord::Base
  def week
    self.created_at.strftime('%W')
  end
end
