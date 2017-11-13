class Client < ApplicationRecord

  has_and_belongs_to_many :legislators


  # -------------------------
  # find clients filtered by first name or last name mix search param
  #
  # @param: string search
  # @return: class legislator
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/04/2017 by Phonpanom

  def self.search(search)
    if search
      where('first_name LIKE :first OR last_name LIKE :last', first: "%#{search}%" , last: "%#{search}%")
    end
  end
end
