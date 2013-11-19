require 'spec_helper'

describe Task do

  it 'can be instantiated' do
    expect(Task.new).to be_an_instance_of Task
  end

  it 'can be saved successfully' do
    expect(Task.create).to be_persisted
  end

  it 'cannot be added to a nonexisting project' do
    expect(Task.create(:name=>'foo bar',:project_id=>889)).to raise_error
  end


end
