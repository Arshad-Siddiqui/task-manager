require 'task_manager'

RSpec.describe TaskManager do
  it 'returns 1 task when given 1 task' do
    task_manager = TaskManager.new
    task_manager.create('task 1')
    expect(task_manager.view).to eq 'task 1'
  end

  it 'returns 2 tasks when given 2 tasks' do
    task_manager = TaskManager.new
    task_manager.create('task 1')
    task_manager.create('task 2')
    expect(task_manager.view).to eq "task 1, task 2"
  end

  it 'returns 1 when given 2 tasks and asked to complete 1' do
    task_manager = TaskManager.new
    task_manager.create('task 1')
    task_manager.create('task 2')
    task_manager.complete('task 1')
    expect(task_manager.view).to eq "task 2"
  end
end