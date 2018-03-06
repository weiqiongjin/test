class DemoTestsController < ApplicationController
  # GET /demo_tests
  # GET /demo_tests.json
  def index
    @demo_tests = DemoTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @demo_tests }
    end
  end

  # GET /demo_tests/1
  # GET /demo_tests/1.json
  def show
    @demo_test = DemoTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demo_test }
    end
  end

  # GET /demo_tests/new
  # GET /demo_tests/new.json
  def new
    @demo_test = DemoTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @demo_test }
    end
  end

  # GET /demo_tests/1/edit
  def edit
    @demo_test = DemoTest.find(params[:id])
  end

  # POST /demo_tests
  # POST /demo_tests.json
  def create
    @demo_test = DemoTest.new(params[:demo_test])

    respond_to do |format|
      if @demo_test.save
        format.html { redirect_to @demo_test, notice: 'Demo test was successfully created.' }
        format.json { render json: @demo_test, status: :created, location: @demo_test }
      else
        format.html { render action: "new" }
        format.json { render json: @demo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /demo_tests/1
  # PUT /demo_tests/1.json
  def update
    @demo_test = DemoTest.find(params[:id])

    respond_to do |format|
      if @demo_test.update_attributes(params[:demo_test])
        format.html { redirect_to @demo_test, notice: 'Demo test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demo_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_tests/1
  # DELETE /demo_tests/1.json
  def destroy
    @demo_test = DemoTest.find(params[:id])
    @demo_test.destroy

    respond_to do |format|
      format.html { redirect_to demo_tests_url }
      format.json { head :no_content }
    end
  end
end
