class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]
  before_action :require_http_auth, only: [:index]

  protect_from_forgery :except => :create

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
  end

  # GET /uploads/new
  def new
    @upload = Upload.new
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create
    puts params[:image]
    cloudinary = Cloudinary::Uploader.upload(params[:image])
    @upload = Upload.new
    @upload.cloudinary_code = cloudinary["public_id"]
    @upload.height = cloudinary["height"]
    @upload.width = cloudinary["width"]

    @upload.shirt_inches_from_top = params[:inches]
    @upload.shirt_color = params[:color]
    @upload.shirt_name = params[:shirt_name]
    @upload.band_name = params[:band_name]
    @upload.bancamp_url = params[:bancamp_url]
    @upload.user_email = params[:email]
    @upload.user_fullname = params[:full_name]
    @upload.paypal_email = params[:paypal_email]
    



    Stripe.api_key = ENV['SECRET_KEY']

    # Get the credit card details submitted by the form
    token = params[:stripeToken]

    # Create a Customer
    customer = Stripe::Customer.create(
      :source => token,
      :description => params[:email]
    )
    @upload.stripe_customer_id = customer.id
    respond_to do |format|
      if @upload.save
        GeneralMailer.email(params[:email],
        "Your T-Shirt Has Been Created!",
        @upload).deliver
        format.html { redirect_to "/success/#{@upload.id}", mockup: @upload.cloud_small_mockup, notice: 'Upload was successfully created.' }
        format.json { render :show, status: :created, location: @upload }
      else
        format.html { render :new }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to uploads_url, notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params[:upload]
    end
end
