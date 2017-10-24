require 'rails_helper'

RSpec.describe Photo, type: :model do

  describe "relation" do
   it { should belong_to(:artist) }
 end

end
