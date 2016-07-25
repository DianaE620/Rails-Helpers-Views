class UsersController < ApplicationController

  #Permite que pueda utilizar render js
  # ActionController::RequestForgeryProtection - Ruby on Rails API
  protect_from_forgery except: :index

  def index
    @array_nombres = ["Diana Ortiz", "Jesus Huerta", "Laura Zavala", "Roberto Perez"]

    #render solo texto
    #render plain: "OK"

    #render de html
    #render html: "<strong>Not Found</strong>".html_safe

    #render inline: "xml.p {'Horrid coding practice!'}", type: :builder

    #render xml: @array_nombres

    #render body: "raw"

    #render inline: "<% @array_nombres.each do |p| %><p><%= p %></p><% end %>"

    #Esto no funciona, investigarlo
    #render js: "alert('Hello Rails');"

    #render status: 500
    #render status: :forbidden

  end

  def holamundo
    p "hola"
    p params
    render :_profile
  end


end
