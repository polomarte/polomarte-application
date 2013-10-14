# encoding: utf-8

require 'spec_helper'

describe Project do
  it { should have_attribute :name }
  it { should accept_nested_attributes_for :tasks }
  it { should allow_mass_assignment_of :tasks_attributes }

  it { should have_many :tasks }
end
