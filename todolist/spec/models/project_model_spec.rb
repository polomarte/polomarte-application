# encoding: utf-8

require 'spec_helper'

describe Project do
  it { should have_attribute :name }
  it { should accept_nested_attributes_for :tasks }
  it { should allow_mass_assignment_of :tasks_attributes }

  it { should have_many :tasks }

  let(:project) { FactoryGirl.build :project }

  describe '#validate_completed' do
    before(:each) do
      project.tasks << FactoryGirl.build_list(:task, 2)
      project.save
    end

    it 'should_not_be_completed_with_uncompleted_tasks' do
      project.tasks.each { |task| task.completed = false; task.save}
      project.tasks.first.completed = true
      project.tasks.first.save
      project.save!
      project.should_not be_completed
    end

    it 'should_be_completed_with_only_completed_tasks' do
      project.tasks.each { |task| task.completed = true; task.save}
      project.save!
      project.should be_completed
    end

    it 'should_be_completed_with_no_tasks' do
      project.tasks.delete
      project.save!
      project.should_not be_completed
    end
  end
end
