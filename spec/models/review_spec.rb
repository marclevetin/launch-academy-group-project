require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Review, type: :model do
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:rating) }
  it { should belong_to(:reg_user) }
  it { should belong_to(:omelette) }
end
