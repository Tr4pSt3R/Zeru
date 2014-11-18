require 'spec_helper'

RSpec.describe AlphaUser do
  
  #validations
  it { should validate_uniqueness_of(:email) } 
end