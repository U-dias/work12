class Task < ApplicationRecord
  validates :title, :description, :start, :end, presence:  { message: "を入力して下さい。" }
  validates :title, length: { maximum: 20, message: "は20字までにして下さい。"}
  validates :description, length: { maximum: 500, message: "は500字までにして下さい。"}
  # validates :end, numericality: { greater_than_or_equal_to: :start,message: "が間違っています。" }
  validate :start_end_check

  def start_end_check
    errors.add(:end, "は開始日より前の日付は登録できません。") unless
    self.start <= self.end 
    end

end