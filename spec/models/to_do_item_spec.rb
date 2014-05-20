require 'spec_helper'

describe ToDoItem, :type => :model do
  it { should validate_presence_of(:title) }
  it { should belong_to(:destination) }
end
