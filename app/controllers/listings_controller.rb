class ListingsController < ApplicationController
    before_action :set_listing!, only: [:show, :edit, :update,]
  
    def index
      @listings = Listing.all
    end
  
    def show
    end
  
    def new
      @listing = Listing.new
    end
  
    def edit
    end
  
    def create
      @listing = Listing.create(listing_params)
        redirect_to listing_path(@listing)
    end
  
    def update
      @listing.update(listing_params)
      redirect_to listing_path(@listing)
    end
  
    def delete
      Listing.destroy(params[:id])
      redirect_to cities_path
    end
  
    private
    
    def listing_params
      params.require(:listing).permit(:address, :listing_type, :title, :description, :price, :neighborhood, :host)
    end
  
    address: '123 Main Street',
    listing_type: "private room",
    title: "Beautiful Apartment on Main Street",
    description: "My apartment is great. there's a bedroom. close to subway....blah blah",
    price: 50.00,
    neighborhood: financial_district,
    host: am

    def set_listing!
      @listing = Listing.find(params[:id])
    end
  end
  