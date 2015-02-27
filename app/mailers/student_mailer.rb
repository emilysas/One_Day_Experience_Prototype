class StudentMailer < ApplicationMailer

  default from: 'onedayexperience1@gmail.com'
 
  def intro_email(professional, student)
    @professional = professional
    @student = student
    @url  = 'http://example.com/login'
    mail(to: @professional.email, subject: 'One Day Experience')
  end
end
