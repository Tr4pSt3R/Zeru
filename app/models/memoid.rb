class Memoid < ActiveRecord::Base	
  # Associations
  has_many :release_dates

  # Callbacks
  after_save :create_release_dates

  # Validations
  validates :content, presence: true

  def next_delivery_date
  	self.release_dates.first.delivery_date
  end

  def create_release_dates
    self.release_dates << ( ReleaseDate.create delivery_date: Date.today.next_day )
  end
end