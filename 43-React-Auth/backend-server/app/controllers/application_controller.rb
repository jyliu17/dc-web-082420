class ApplicationController < ActionController::API

    def secret_key
        "secret"
    end

    # Given a payload, and a secret, return a token
    def encode(payload)
        JWT.encode(payload, secret_key, "HS256")
    end

    # Given a token, and secret key, return payload
    def decode(token)
        JWT.decode(token, secret_key, true, {algorithm: "HS256"})[0]
    end

end
