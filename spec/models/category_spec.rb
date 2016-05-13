require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_and_belong_to_many(:posts) }
  it { is_expected.to validate_presence_of :name }
end
