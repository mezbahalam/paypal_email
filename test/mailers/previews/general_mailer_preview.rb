# Preview all emails at http://localhost:3000/rails/mailers/general_mailer
class GeneralMailerPreview < ActionMailer::Preview

  def email
    @upload = Upload.last
    GeneralMailer.email("bendhalpern@gmail.com","yo yo", @upload)

  end


end
