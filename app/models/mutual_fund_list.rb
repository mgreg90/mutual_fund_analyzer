class MutualFundList < ActiveRecord::Base

  def get_raw_list
    url = "http://news.morningstar.com/fund-category-returns/print.aspx"
    response = HTTParty.get url
    dom = Nokogiri::HTML(response.body)
  end

  def push_raw_list_into_array
    temp_arr = []
    dom = get_raw_list
    dom.css('td').each do |td|
      if td['colspan'] != '7'
        # puts td.text
        temp_arr << td.text
      end
    end
    # puts temp_arr
    temp_arr
  end

  def save_array_of_returns_to_database
    temp_arr = push_raw_list_into_array
    temp_arr = temp_arr.each_slice(7)
    p temp_arr
  end

end
