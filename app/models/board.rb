class Board < ActiveRecord::Base
  has_many :cards

  def backlog_cards
    self.cards.where(status: "backlog")
  end

  def current_cards
    self.cards.where(status: "current")
  end

  def in_progress_cards
    self.cards.where(status: "in_progress")
  end

  def done_cards
    self.cards.where(status: "done")
  end
end
