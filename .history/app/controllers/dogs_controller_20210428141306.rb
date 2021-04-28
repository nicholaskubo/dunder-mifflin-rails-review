class DogsController < ApplicationController
    def index 
    @dogs = Dog.all
    end

    def show
    @Dog = dog.find(params[:id])
    end
end
