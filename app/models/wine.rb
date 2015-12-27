class Wine < ActiveRecord::Base
  VARIETALS = ['Merlot', 'Cabernet Sauvignon', 'Pinot Noir', 'Shiraz', 'Zinfandel',
              'Chardonnay', 'Sauvignon Blanc', 'Pinot Gris', 'Riesling', 'Chianti',
              'Malbec', 'Nebbiolo', 'Tempranillo', 'Grenache', 'Cabernet Franc',
              'Sauternes Blend', 'Other Red Wines', 'Rose']

  validates :name, :country, :year, presence: :true
  validates :year, numericality: { only_integer: true }
  validates :varietal, inclusion: { in: VARIETALS }

  paginates_per 5

  has_many :log_entries, dependent: :destroy

end