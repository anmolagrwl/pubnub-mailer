class StockupdatePreview < ActionMailer::Preview

  def daily_update
    StockupdateMailer.daily_update
  end

end