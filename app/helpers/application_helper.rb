require "action_view/helpers/number_helper"

module ApplicationHelper
  include ActionView::Helpers::NumberHelper
  def formatted_price(price)
    price = price.to_i / 100.0
    number_to_currency(price)
  end

  def colorize_price(price, avg_cost)
    color = if avg_cost.to_i == 0
      "black"
    elsif price.to_i > avg_cost.to_i
      "red"
    elsif price.to_i < avg_cost.to_i
      "green"
    else
      "black"
    end
    return "<font color=#{color}>#{formatted_price(price)}</font>".html_safe
  end

  def colorize_pricediff(price, avg_cost)
    difference = price.to_i - avg_cost.to_i
    if difference < 0
      color = "green"
    else
      color = "red"
    end
    return "<font color=#{color}>#{formatted_price(price-avg_cost)}</font>".html_safe
  end
end
