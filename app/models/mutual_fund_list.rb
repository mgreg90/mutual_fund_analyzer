class MutualFundList < ActiveRecord::Base

  def get_raw_list_mstar_cats
    url = "http://news.morningstar.com/fund-category-returns/print.aspx"
    response = HTTParty.get url
    dom = Nokogiri::HTML(response.body)
  end

  def push_raw_list_mstar_cats_into_array
    temp_arr = []
    dom = get_raw_list_mstar_cats
    dom.css('td').each do |td|
      if td['colspan'] != '7'
        # puts td.text
        temp_arr << td.text
      end
    end
    # puts temp_arr
    temp_arr
  end

  def save_array_of_mstar_cats_to_database
    temp_arr = push_raw_list_mstar_cats_into_array
    temp_arr = temp_arr.each_slice(7).to_a
    # p temp_arr
    # Comment for git test
  end

end
