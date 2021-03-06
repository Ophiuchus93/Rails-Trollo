class Board < ApplicationRecord
  has_many :lists, dependent: :destroy

  def self.all_boards
    Board.find_by_sql(
      "SELECT *
      FROM boards"
    )
  end
end
