require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new(content: "Some content here", author: "Test Author")
    assert_not article.save, "Saved the article without a title"
  end

  test "should not save article with short title" do
    article = Article.new(title: "AB", content: "Some content here", author: "Test Author")
    assert_not article.save, "Saved the article with a title shorter than 3 characters"
  end

  test "should not save article without content" do
    article = Article.new(title: "Test Title", author: "Test Author")
    assert_not article.save, "Saved the article without content"
  end

  test "should not save article with short content" do
    article = Article.new(title: "Test Title", content: "Short", author: "Test Author")
    assert_not article.save, "Saved the article with content shorter than 10 characters"
  end

  test "should not save article without author" do
    article = Article.new(title: "Test Title", content: "Some content here")
    assert_not article.save, "Saved the article without an author"
  end

  test "should save valid article" do
    article = Article.new(
      title: "Valid Title",
      content: "This is valid content with enough characters",
      author: "Valid Author",
      published: true
    )
    assert article.save, "Failed to save a valid article"
  end

  test "published_status returns Published for published articles" do
    article = articles(:one)
    assert_equal "Published", article.published_status
  end

  test "published_status returns Draft for unpublished articles" do
    article = articles(:two)
    assert_equal "Draft", article.published_status
  end

  test "published scope returns only published articles" do
    published_count = Article.published.count
    assert published_count > 0, "Should have published articles"
    Article.published.each do |article|
      assert article.published, "Published scope returned unpublished article"
    end
  end

  test "unpublished scope returns only unpublished articles" do
    unpublished_count = Article.unpublished.count
    assert unpublished_count > 0, "Should have unpublished articles"
    Article.unpublished.each do |article|
      assert_not article.published, "Unpublished scope returned published article"
    end
  end

  test "recent scope returns articles in descending order" do
    articles = Article.recent.limit(2)
    if articles.count > 1
      assert articles.first.created_at >= articles.second.created_at,
             "Recent scope did not return articles in descending order"
    end
  end
end
