class NoticicationMailer < ApplicationMailer
  def notification_mail(blog)
    @blog = blog
    mail(to:@blog.user.email, subject:"【Instac 大課題】投稿完了のお知らせ")
    #code
  end
end
