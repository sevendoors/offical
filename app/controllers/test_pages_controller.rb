class TestPagesController < ApplicationController
  # GET /test_pages
  # GET /test_pages.json
  def index
    @test_pages = TestPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_pages }
    end
  end

  # GET /test_pages/1
  # GET /test_pages/1.json
  def show
    @test_page = TestPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_page }
    end
  end

  # GET /test_pages/new
  # GET /test_pages/new.json
  def new
    @test_page = TestPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_page }
    end
  end

  # GET /test_pages/1/edit
  def edit
    @test_page = TestPage.find(params[:id])
  end

  # POST /test_pages
  # POST /test_pages.json
  def create
    @test_page = TestPage.new(params[:test_page])

    respond_to do |format|
      if @test_page.save
        format.html { redirect_to @test_page, notice: 'Test page was successfully created.' }
        format.json { render json: @test_page, status: :created, location: @test_page }
      else
        format.html { render action: "new" }
        format.json { render json: @test_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_pages/1
  # PUT /test_pages/1.json
  def update
    @test_page = TestPage.find(params[:id])

    respond_to do |format|
      if @test_page.update_attributes(params[:test_page])
        format.html { redirect_to @test_page, notice: 'Test page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_pages/1
  # DELETE /test_pages/1.json
  def destroy
    @test_page = TestPage.find(params[:id])
    @test_page.destroy

    respond_to do |format|
      format.html { redirect_to test_pages_url }
      format.json { head :no_content }
    end
  end
end
