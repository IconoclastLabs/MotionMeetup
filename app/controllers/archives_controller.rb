class ArchivesController < ApplicationController
  layout 'archive'
  before_action :set_archive, only: [:show, :edit, :update, :destroy]

  # GET /archives
  # GET /archives.json
  def index
    @archives = Archive.all
  end

  # GET /archives/1
  # GET /archives/1.json
  def show
  end

  # GET /archives/new
  def new
    @archive = Archive.new
  end

  # GET /archives/1/edit
  def edit
  end

  # POST /archives
  # POST /archives.json
  def create
    @archive = Archive.new(archive_params)

    if @archive.save
      redirect_to @archive, notice: 'Archive was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /archives/1
  def update
    if @archive.update(archive_params)
      redirect_to @archive, notice: 'Archive was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /archives/1
  # DELETE /archives/1.json
  def destroy
    @archive.destroy
    redirect_to archives_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive
      @archive = Archive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_params
      params.require(:archive).permit(:name, :title, :body, :publish_at)
    end
end
