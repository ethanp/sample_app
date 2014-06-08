class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }

  # \A          - match start of string (note that ^ means start of **line**)
  # [\w+\-.]+   - at least one word character, plus, hyphen, or dot
  # @           - literal @ sign
  # [a-z\d\-.]+ - at least one letter, digit, hyphen, or dot
  # \.          - literal dot
  # [a-z]+      - at least one letter (lowercase only [we ignore case below])
  # \z          - match end of string
  # /i          - case insensitive
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
