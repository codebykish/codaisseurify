require 'rails_helper'

RSpec.describe Artist, type: :model do


  describe "validations" do
    it { is_expected.to validate_presence_of(:artist_name) }
   end

  describe "validations bio length" do
     it { should validate_length_of(:bio).is_at_most(50) }
    end

  describe "relation" do
    it { should have_many(:songs) }
  end

  describe "relation" do
    it { should have_many(:photos) }
  end

end
