module ApplicationHelper

  module ApplicationHelper
    include ActionView::Helpers::NumberHelper
    def formatted_price(price)
      price = price / 100.0
      number_to_currency(price)
    end
  end
end
