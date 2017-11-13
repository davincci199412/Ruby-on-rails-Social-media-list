=begin
# define customer model class
# --------------------------------------
# @author Phonpanom
# @description  define Post model class
# @version  1.0
# ---------------------------------------
# @last edit 11/03/2017
# @by Phonpanom
=end

class Post < ApplicationRecord

  # -------------------------
  # Filtering posts
  #
  # @param: string social  Characters to compare with social network name of Posts
  # @param: date start_at  Start of search time range
  # @param: date end_at  End of search time range
  #
  # @return: class post posts filtered by social,start_at and end_at
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/04/2017 by Phonpanom
  #

  def self.search(social,start_at,end_at)
    date_start = Date.new start_at["date(1i)"].to_i, start_at["date(2i)"].to_i, start_at["date(3i)"].to_i
    date_end = Date.new end_at["date(1i)"].to_i, end_at["date(2i)"].to_i, end_at["date(3i)"].to_i
    if social != 'all'
      where('social LIKE :social AND posted_datetime >= :start_date AND posted_datetime <= :end_date',
            social: "%#{social}%",start_date: date_start,end_date: date_end)
    elsif social == 'all'
      where('posted_datetime >= :start_date AND posted_datetime <= :end_date',
            start_date: date_start,end_date: date_end)
    end
  end

  # -------------------------
  # Get posts filtered by specific social_id of customer
  #
  # @param: string facebook_id  Characters to compare with facebook_id of customers if social is facebook
  # @param: string tweeter_id  Characters to compare with tweeter_id of customers if social is twitter
  #
  # @return: class post   Posts filtered by social_id
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/04/2017 by Phonpanom
  #

  def self.search_social(facebook_id,tweeter_id)
    if facebook_id || tweeter_id
      where('customer_id = :facebook_id OR customer_id = :tweeter_id',
            facebook_id: facebook_id,tweeter_id: tweeter_id)
    end
  end

end
