class Weather < ApplicationRecord
  CITIES = [
    "Minsk",	"Baran'", "Beloozersk", "Bereza", "Berezino", "Berezovka", "Bobruisk",
    "Borisov", "Vitebsk", "Brest", "Mogilev", "Gomel", "Ivanovo",	"Grodno", "Kalinkovichi",
    "Kirovsk", "Klimovichi", "Klichev", "Kobrin", "Kossovo", "Krichev", "Krupki", "Soligorsk", "Baranovichi" ].freeze

  enum city_names: CITIES
end
