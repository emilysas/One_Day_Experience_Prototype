class StudentMailer < ApplicationMailer
  default from: 'student@example.com'
 
  def intro_email(professional, student)
    @professional = professional
    @student = student
    @url  = 'http://example.com/login'
    mail(to: @profesional.email, subject: 'One Day Experience')
  end
end
