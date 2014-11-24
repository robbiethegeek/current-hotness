require "test_helper"

feature "GlobalElements" do
    describe "Common page elements" do
        before(:all) do
            visit root_path
        end
        scenario "there should be a footer" do
            page.must_have_selector "footer"
        end
        scenario "there should be be social media list" do
            page.must_have_css "#social-media"
        end
        scenario "there should be 2 social network links" do
            page.assert_selector('footer ul#social-media li', :count => 2)
        end
    end

end
