class Api::V1::MediaController < ApplicationController
def index
    @media = Medium.order('created_at DESC')
  end
	
end
