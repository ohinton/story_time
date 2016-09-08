require 'rails_helper'

describe Contribution do
  it { should validate_presence_of :author }
  it { should validate_presence_of :image }
  it { should validate_presence_of :sentence }
end
