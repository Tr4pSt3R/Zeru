require 'spec_helper'

describe AlphaUser do
  
  #validations
  it { should validate_uniqueness_of(:email) }
end