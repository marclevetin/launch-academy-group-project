require 'rails_helper'
require 'shoulda-matchers'

describe RegUser, type: :model do
  RegUser.create(
    first_name: "bob",
    last_name: "eggs",
    email: "bob@eggs.com",
    password: "something"
    )

  it { should validate_presence_of(:email) }
  # it { should validate_uniqueness_of(:email) }
  # it { should validate_presence_of(:encrypted_password) }
  # it { should validate_presence_of(:first_name) }
  # it { should validate_presence_of(:last_name) }
  # it { should have_many(:omelettes) }
  # it { should have_many(:reviews) }
end
