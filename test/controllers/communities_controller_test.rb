require "test_helper"

describe CommunitiesController do

  let(:community) { communities :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communities)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates community" do
    assert_difference('Community.count') do
      post :create, community: { description: community.description, name: community.name, path: community.path }
    end

    assert_redirected_to community_path(assigns(:community))
  end

  it "shows community" do
    get :show, id: community
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: community
    assert_response :success
  end

  it "updates community" do
    put :update, id: community, community: { description: community.description, name: community.name, path: community.path }
    assert_redirected_to community_path(assigns(:community))
  end

  it "destroys community" do
    assert_difference('Community.count', -1) do
      delete :destroy, id: community
    end

    assert_redirected_to communities_path
  end

end
