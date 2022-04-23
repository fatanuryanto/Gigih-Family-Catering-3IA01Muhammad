class ReportsController < ApplicationController
  def index
    today = DateTime.current.to_date
    @reports = Order.where("order_date = ?", today)
  end
end
