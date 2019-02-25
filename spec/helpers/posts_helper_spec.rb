require 'rails_helper'

RSpec.describe PostsHelper, :type => :helper do

  context '#create_new_post_partial_path' do
    it "returns a signed_in partial's path" do
      helper.stub(:user_signed_in?).and_return(true)
      expect(helper.create_new_post_partial_path). to (
        eq 'posts/branch/create_new_post/signed_in'
      )
    end

    it "returns a signed_in partial's path" do
      helper.stub(:user_signed_in?).and_return(false)
      expect(helper.create_new_post_partial_path). to (
        eq 'posts/branch/create_new_post/not_signed_in'
      )
    end
  end

  context '#all_categories_button_partial_path' do
    it "returns an all_selected partial's path" do
      controller.params[:category] = ''
      expect(helper.all_categories_button_partial_path).to (
        eq 'posts/branch/categories/all_selected'
      )
    end

    it "returns an all_not_selected partial's path" do
      controller.params[:category] = 'category'
      expect(helper.all_categories_button_partial_path).to (
        eq 'posts/branch/categories/all_not_selected'
      )
    end
  end

  context '#post_format_partial_path' do
    it "returns a home_page partial's path" do
      helper.stub(:current_page?).and_return(true)
      expect(helper.post_format_partial_path).to (
        eq 'posts/post/home_page'
      )
    end

    it "returns a branch_page partial's path" do
      helper.stub(:current_page?).and_return(false)
      expect(helper.post_format_partial_path).to (
        eq 'posts/post/branch_page'
      )
    end
  end
end
