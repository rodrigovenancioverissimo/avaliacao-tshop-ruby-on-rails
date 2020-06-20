# frozen_string_literal: true

require 'rails_helper'
include SessionsHelper

RSpec.describe BusinessesController, type: :controller do
  it 'GET #show' do
    user = build(:user)
    user.business = build(:business)
    user.save!
    get :show, id: user.business.id
    expect(response).to redirect_to(login_path)
    log_in user
    get :show, id: user.business.id
    expect(response).to render_template(:show)
    expect(response).to have_http_status(:ok)
  end
end
