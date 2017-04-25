class ReviewMailer < ApplicationMailer
  def new_review(review)
    @review = review

    mail(
      to: review.omelette.reg_user.email,
      subject: "New Review for #{review.omelette.name}"
    )
  end
end
