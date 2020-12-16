class StaticController < ApplicationController
    skip_before_action :verified_shop, only: [:home]
  
    def home
    end
  end