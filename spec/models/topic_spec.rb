require 'rails_helper'

describe Topic do
  it { should validate_presence_of :name}
end
