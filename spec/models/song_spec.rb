require 'rails_helper'

RSpec.describe Song, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"


describe "validations" do
  it { is_expected.to validate_presence_of(:song_name) }
  end

 describe "relation" do
  it { should belong_to(:artist) }
end


end
