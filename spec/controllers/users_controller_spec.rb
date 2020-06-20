# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it 'GET #new' do
    get :new
    expect(response).to render_template(:new)
    expect(response).to have_http_status(:ok)
  end

  it 'POST #create' do
    password = Faker::Internet.password
    first_name = Faker::Name.first_name
    user = {
      first_name: first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email(first_name),
      password: password,
      password_confirmation: password
    }
    post :create, { user: user }
    expect(response.content_type).to eq 'text/html'
    expect(response).to have_http_status(302)
  end
end
