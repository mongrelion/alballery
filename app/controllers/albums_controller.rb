class AlbumsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :html, :json

  protected

    def begin_of_association_chain
      current_user
    end
end
