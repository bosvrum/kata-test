class LanguagesController < ApplicationController

  def index
    @languages = Language.all
    
    respond_to do |format|
      format.html {}
      format.json { render json: @languages.to_json(include: :frameworks) }
    end
  end

end