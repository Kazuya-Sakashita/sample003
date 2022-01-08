class ContactMonthlyMailer < ApplicationMailer
  default bcc: -> { User.pluck(:email) },
          from: 'notification@example.com'

  def contact_monthly_mail(current_user)
    @user = current_user
    mail(subject: "稼働時間入力のお願い")
  end
end
