class DogsController < ApplicationController
    def index 
    @dogs = Dog.all
    end

    def show
    @dog = dog.find(params[:id])
    end
end
