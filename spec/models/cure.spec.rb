require 'rails_helper'

describe Cure do
  it { should validate_presence_of :symptom }
  it { should belong_to :topic } 
end
