require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Omelette, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:ingredients) }
  it { should belong_to(:reg_user) }
  it { should have_many(:reviews) }
end
