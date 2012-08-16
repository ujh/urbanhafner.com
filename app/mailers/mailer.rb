class Mailer < ActionMailer::Base
  default from: "noreply@urbanhafner.com"

  def contact_request(cr)
    @contact_request = cr
    mail({
      to: "contact@urbanhafner.com",
      subject: "[urbanhafner.com] Contact Request",
      reply_to: @contact_request.email
    })
  end
end
