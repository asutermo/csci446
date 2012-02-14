require 'test_helper'

class SendArticleTest < ActionMailer::TestCase
  test "send" do
    mail = SendArticle.send
    assert_equal "Send", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
