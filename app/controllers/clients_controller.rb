class ClientsController < ApplicationController

  # GET /Clients
  # GET /Client.json
  # Show all Clients
  # @created: 11/03/2017 by Phonpanom
  #
  def index
    @clients = Client.all
  end

  # Show legislator filtered by params[:search] (mix customer first or last name)
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/05/2017 by Phonpanom
  #
  def list
    if params[:client]
      @client = Client.find(params[:client])
      @client.legislators.clear
      if params[:visible]
        params[:visible].each do |i|
          @legislator = Legislator.find(i)
          @client.legislators << @legislator
        end
      end
      if params[:client] == ""
        @clients = Client.all
      end
    else
      @clients = Client.all
    end
    if params[:search]
      if params[:search] == ""
        @clients = Client.all
      else
        @clients = Client.search(params[:search])
      end
    else
      @clients = Client.all
    end
  end
end
