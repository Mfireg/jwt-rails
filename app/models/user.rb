class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         alias_method :authenticate, :valid_password?

        def self.from_token_payload(payload)
          self.all()
        end
end
