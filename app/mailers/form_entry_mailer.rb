class FormEntryMailer < ApplicationMailer
  def thank_you_email(form_entry)
    @widget = form_entry.widget
    @mobilization = @widget.mobilization

    mail(
      to: form_entry.email,
      subject: "Obrigado por participar da mobilização #{@mobilization.name}"
    )
  end
end
