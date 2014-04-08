class Link < ActiveRecord::Base
  validates :user_link, :presence => true

  def up_vote
    time = ((Time.now - (self.created_at)).to_i)/60
    vote = self.vote

    if time < 240 || vote > 100
      self.vote.to_i + 2
    else
      self.vote.to_i + 1
    end
  end



  def long_ago
    time = (Time.now - (self.created_at)).to_i

    if time > 3600
      "#{(time/3600).to_i} hour ago"
    elsif time > 360
      "#{time/60} mins ago"
    end
  end

end
