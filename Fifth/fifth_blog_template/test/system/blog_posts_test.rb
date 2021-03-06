require "application_system_test_case"

class BlogPostsTest < ApplicationSystemTestCase
  setup do
    @blog_post = blog_posts(:one)
  end

  test "visiting the index" do
    visit blog_posts_url
    assert_selector "h1", text: "Blog Posts"
  end

  test "creating a Blog post" do
    visit blog_posts_url
    click_on "New Blog Post"

    fill_in "Body", with: @blog_post.body
    fill_in "Main image", with: @blog_post.main_image
    fill_in "Media type", with: @blog_post.media_type
    fill_in "Seo meta description", with: @blog_post.seo_meta_description
    fill_in "Seo title", with: @blog_post.seo_title
    fill_in "Title", with: @blog_post.title
    fill_in "Video upload", with: @blog_post.video_upload
    click_on "Create Blog post"

    assert_text "Blog post was successfully created"
    click_on "Back"
  end

  test "updating a Blog post" do
    visit blog_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blog_post.body
    fill_in "Main image", with: @blog_post.main_image
    fill_in "Media type", with: @blog_post.media_type
    fill_in "Seo meta description", with: @blog_post.seo_meta_description
    fill_in "Seo title", with: @blog_post.seo_title
    fill_in "Title", with: @blog_post.title
    fill_in "Video upload", with: @blog_post.video_upload
    click_on "Update Blog post"

    assert_text "Blog post was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog post" do
    visit blog_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog post was successfully destroyed"
  end
end
