class GeneralMailer < ActionMailer::Base
  default from: "ToneThreads <bandcamp@tonethreads.com>"


  def email(email,subject,upload)
    @upload = upload
    mail to: email, subject: subject, bcc: 'bandcamp@tonethreads.com'
  end

end
