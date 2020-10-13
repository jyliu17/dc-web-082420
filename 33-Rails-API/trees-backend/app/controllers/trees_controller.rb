class TreesController < ApplicationController
    def index
        render json: Tree.all.to_json(except: [:image, :created_at, :updated_at])
    end
end
