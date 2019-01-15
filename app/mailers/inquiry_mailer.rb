
class InquiryMailer < ActionMailer::Base

  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
    from: 'NaturalGuard お問い合わせフォーム <naturalguard.help@gmail.com>',
    to:   'dainoheya@gmail.com',
    subject: '【重要】naturalguard.jpにお問い合わせがありました。'
  )
  end

end
