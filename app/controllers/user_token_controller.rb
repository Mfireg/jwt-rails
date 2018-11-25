class UserTokenController < Knock::AuthTokenController

    #comentar esta linea en produccion
skip_before_action :verify_authenticity_token

end
