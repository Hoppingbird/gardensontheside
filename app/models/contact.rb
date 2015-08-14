class Contact < MailForm::Base
  attribute :contact_name,      :validate => true
  attribute :contact_email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :contact_phone
  attribute :contact_message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => "My Contact Form",
        :to => "hoppingbird@gmail.com",
        :from => %("#{contact_name}" <#{contact_email}>)
    }
  end
end
