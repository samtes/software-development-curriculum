class ZellersCongruence

  # See Wikipedia for details on Zeller's Congruence:
  # http://en.wikipedia.org/wiki/Zeller's_congruence
  def self.calculate(year, month, day=1)
    q = day
    m = modified_month(year, month)
    y = modified_year(year, month)

    calculation_1 = (m + 1) * 26 /10
    calculation_2 = q + calculation_1.floor + y +(y/4).floor + 6 * (y/100).floor + (y/400).floor
    h = (calculation_2) % 7

    d = (h == 0) ? 7 : h
  end

  def self.modified_month(year, month)
    if month < 3
      month + 12
    else
      month
    end
  end

  def self.modified_year(year, month)
    if month < 3
      year - 1
    else
      year
    end
  end
end
