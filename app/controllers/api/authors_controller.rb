class Api::AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render 'index.json.jbuilder'
  end

end
