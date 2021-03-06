require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PostsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Post. As you add validations to Post, be sure to
  # adjust the attributes here as well.
  #before(:each) do
  #  @post = Post.new(title: 'My title', content: 'My content')
  #end

  describe "GET #index" do
    it "assigns all posts as @posts" do
      get :index
      #expect(assigns(:posts)).to eq([post])
      expect(response).to render_template("index")
      expect(response.body).to eq ""
    end
  end

  describe "GET #new" do
    it "assigns a new post as @post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Post" do
        expect {post :create}.to change(Post, :count).by(1)
      end

      it "assigns a newly created post as @post" do
        post :create
        expect(assigns(:post)).to be_a(Post)
        expect(assigns(:post)).to be_persisted
      end

      it "redirects to the created post" do
        post :create
        expect(response).to redirect_to(Post.last)
      end
    end
  end

  describe "DELETE #destroy" do

    it "redirects to the posts list" do
      post = Post.create!
      delete :destroy, {:id => post.to_param}
      expect(response).to redirect_to(posts_url)
    end
  end

end
