class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :update, :basics, :description, :address, :price, :photos, :calendar, :bankaccount, :publish]


  def index
    @listings = current_user.listings
  end

  def show
    @photos = @listing.photos
  end

  def new
    # new.html.erbの13.14行目のエラー原因。リスティングの作成
    @listing = current_user.listings.build
  end

  def create
    # 現在のパラメーターとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "登録内容を作成・保存しました。"
    else
      redirect_to new_listing_path, notice: "登録内容を作成・保存できませんでした。"
    end

  end

  def edit
  end

  
  def update
    if @listing.update(listing_params)
      redirect_back(fallback_location: root_path)
      flash[:notice] = '更新できました'
    end
  end

  def basics
    
  end

  def description
  end

  def address
  end

  def price
  end

  def photos
    @photo = Photo.new
  end

  def start_time
    
  end

  def end_time
    
  end


  def bankaccount
  end 

  def publish
  end

  private
  def listing_params
    params.require(:listing).permit(:meal_type, :guest_number, :meal_allergy)
  end

  def set_listing #basicsからpublishまでの重複のまとめ
    @listing = Listing.find(params[:id])
  end

end


