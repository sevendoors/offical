class TestPostsController < ApplicationController
  # GET /test_posts
  # GET /test_posts.json
  def index
    @test_posts = TestPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_posts }
    end
  end

  # GET /test_posts/1
  # GET /test_posts/1.json
  def show
    @test_post = TestPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_post }
    end
  end

  # GET /test_posts/new
  # GET /test_posts/new.json
  def new
    @test_post = TestPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_post }
    end
  end

  # GET /test_posts/1/edit
  def edit
    @test_post = TestPost.find(params[:id])
  end

  # POST /test_posts
  # POST /test_posts.json
  def create
    @test_post = TestPost.new(params[:test_post])

    respond_to do |format|
      if @test_post.save
        format.html { redirect_to @test_post, notice: 'Test post was successfully created.' }
        format.json { render json: @test_post, status: :created, location: @test_post }
      else
        format.html { render action: "new" }
        format.json { render json: @test_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_posts/1
  # PUT /test_posts/1.json
  def update
    @test_post = TestPost.find(params[:id])

    respond_to do |format|
      if @test_post.update_attributes(params[:test_post])
        format.html { redirect_to @test_post, notice: 'Test post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_posts/1
  # DELETE /test_posts/1.json
  def destroy
    @test_post = TestPost.find(params[:id])
    @test_post.destroy

    respond_to do |format|
      format.html { redirect_to test_posts_url }
      format.json { head :no_content }
    end
  end
end
