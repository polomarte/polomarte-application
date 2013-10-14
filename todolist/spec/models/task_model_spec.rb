# encoding: utf-8

require 'spec_helper'

describe Task do
  it { should have_attribute :title }
  it { should have_attribute :completed }
  it { should allow_mass_assignment_of :completed }

  it { should belong_to :project }
end

