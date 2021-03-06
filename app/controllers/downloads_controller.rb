class DownloadsController < ApplicationController
  # before_action :set_download, only: [:show, :edit, :update, :destroy]

  # GET /downloads
  # GET /downloads.json
  def index
    
    if params[:filename]
      send_file "app/assets/images/#{params[:filename]}",
                filename: params[:filename],
                type: params[:filename][/\.[^.]*$/],
                disposition: 'attachment',
                x_sendfile: true 
    else
      render nothing: true, status: 400
    end
              
    # @downloads = Download.all
    # @promo = Promotion.find(2)
    # send_data @promo.picture.url,
#               filename: @promo.picture.original_filename,
#               type: @promo.picture.content_type,
#               disposition: 'attachment'
  end

  # GET /downloads/1
  # GET /downloads/1.json
  #   def show
  # end

  # GET /downloads/new
  # def new
  #   @download = Download.new
  # end

  # GET /downloads/1/edit
  # def edit
  # end

  # POST /downloads
  # POST /downloads.json
  # def create
  #   @download = Download.new(download_params)
  #
  #   respond_to do |format|
  #     if @download.save
  #       format.html { redirect_to @download, notice: 'Download was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @download }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @download.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /downloads/1
  # PATCH/PUT /downloads/1.json
  #   def update
  #   respond_to do |format|
  #     if @download.update(download_params)
  #       format.html { redirect_to @download, notice: 'Download was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @download.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /downloads/1
  # DELETE /downloads/1.json
  # def destroy
  #   @download.destroy
  #   respond_to do |format|
  #     format.html { redirect_to downloads_url }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #     # Use callbacks to share common setup or constraints between actions.
  #     def set_download
  #       @download = Download.find(params[:id])
  #     end
  #
  #     # Never trust parameters from the scary internet, only allow the white list through.
  #     def download_params
  #       params[:download]
  #     end
end
