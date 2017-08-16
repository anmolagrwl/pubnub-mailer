class StockupdateMailer < ApplicationMailer

  def daily_update
    @from_email = "from@example.com"
    @company = "Dummy company"
    mail(to: @from_email, subject: 'Stock update')
  end

end
