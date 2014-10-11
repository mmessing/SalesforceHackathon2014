class WelcomeController < ApplicationController

  # GET /welcome
  def index
    # @oauth = oauth
    @thing = thing
  end

  def oauth
    HTTP::post "https://login.salesforce.com/services/oauth2/token", {
      on_error: ->(status, body) { puts status, body },
      params: {
        client_id: '3MVG9xOCXq4ID1uEak0WnlmTfnu4R9AeEf591VID97KVqdMJE46lM5ZCBfbsIz4pHePelMFbyxMTS5_nsLrJ.',
        client_secret: '1443102581007162998',
        grant_type: 'password',
        username: 'alee111777@gmail.com',
        password: 'Jackpot7'
      }
    }
  end

  def thing

  end

end
