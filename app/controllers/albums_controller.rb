class AlbumsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => :index
  respond_to :html, :json

  def index
    respond_with(@albums = Album.all)
  end

  protected

    def begin_of_association_chain
      current_user
    end
end
