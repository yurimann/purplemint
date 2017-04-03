class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
# validates :email, uniqueness: true
def admin?
  if role == "admin"
    return true
  end
end
ALLOWED = ["admin"]
end
