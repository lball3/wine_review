class Wine < ActiveRecord::Base

VARIETALS = ['Riesling', 'Chardonnay', 'Sauvignon Blanc', 'Syrah', 'Merlot',
              'Cabernet Sauvignon']

  validates :name, :country, :year, presence: :true
  validates :year, numericality: { only_integer: true }
  validates :varietal, inclusion: { in: VARIETALS }

  paginates_per 5

end
