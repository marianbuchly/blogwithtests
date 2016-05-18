require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to belong_to(:admin) }
  it { is_expected.to have_many(:likes) }
  it { should have_and_belong_to_many(:categories) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:body) }
end
