require 'test_helper'

class ArticleClasificationsControllerTest < ActionController::TestCase
  setup do
    @article_clasification = article_clasifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_clasifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_clasification" do
    assert_difference('ArticleClasification.count') do
      post :create, article_clasification: { nombre_clasificacion: @article_clasification.nombre_clasificacion }
    end

    assert_redirected_to article_clasification_path(assigns(:article_clasification))
  end

  test "should show article_clasification" do
    get :show, id: @article_clasification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article_clasification
    assert_response :success
  end

  test "should update article_clasification" do
    patch :update, id: @article_clasification, article_clasification: { nombre_clasificacion: @article_clasification.nombre_clasificacion }
    assert_redirected_to article_clasification_path(assigns(:article_clasification))
  end

  test "should destroy article_clasification" do
    assert_difference('ArticleClasification.count', -1) do
      delete :destroy, id: @article_clasification
    end

    assert_redirected_to article_clasifications_path
  end
end
