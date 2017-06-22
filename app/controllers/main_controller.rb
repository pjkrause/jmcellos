class MainController < ApplicationController
  def index
  end

  def about
    @title = "About"
  end

  def sales
    @title = "Sales"
  end

  def contact
    @title = "Contact"
  end
end
