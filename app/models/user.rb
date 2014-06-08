class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }

  # \A          - match start of string (note that ^ means start of **line**)
  # [\w+\-.]+   - at least one word character, plus, hyphen, or dot
  # @           - literal @ sign
  # [a-z\d\-]+  - at least one letter, digit, or hyphen
  # (?: )       - make a group but don't remember it
  # \.[a-z\d\-]+ - dot *followed by* one of the accepted thingies
  # *           - any number of those
  # \.          - literal dot
  # [a-z]+      - at least one letter (lowercase only [we ignore case below])
  # \z          - match end of string
  # /i          - case insensitive
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # this is super magical, I've explained what I know about it in the
  # "Rails Notes.md" file in the "programming" repo
  has_secure_password

  validates :password, length: { minimum: 6 }  # something that we're adding
end
