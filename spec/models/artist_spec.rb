require 'rails_helper'

RSpec.describe Artist, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

  describe "validations" do
    it { is_expected.to validate_presence_of(:artist_name) }
   end
end
