# frozen_string_literal: true

require 'rails_helper'
include SessionsHelper

RSpec.describe ItemsController, type: :controller do
  it 'GET #index' do
    user = build(:user)
    user.business = build(:business)
    user.save!
    get :index
    expect(response).to redirect_to(login_path)
    log_in user
    get :index
    expect(response).to render_template(:index)
    expect(response).to have_http_status(:ok)
  end
end
