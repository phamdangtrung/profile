# frozen_string_literal: true

module User
  module V1
    # Documents for the User class
    class User < Grape::API
      include API::V1::Defaults

      resources :users do
        desc 'Return all users'
        get '', root: :users do
          User.all
        end

        desc 'Return a user'
        params do
          requires :id, type: String, desc: 'ID of the user'
        end
        get ':id', root: 'user' do
          User.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
