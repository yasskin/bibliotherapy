require 'rails_helper'

describe Cure do
  it { should validate_presence_of :therapy }
  it { should belong_to :ailment }
end
