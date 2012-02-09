require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def new_article()
  	Article.new(title: "Test Article", name: "Test author", body: "woo",
  												createdate: Time.now)
  end
  
  test "article attributes must not be empty" do
		article = Article.new
  	assert article.invalid?
  	assert article.errors[:title].any?
  	assert article.errors[:name].any?
  	assert article.errors[:body].any?
  end
end
