# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user  
> So that I can keep track of my tasks  
> I want a program that I can add todo tasks to and see a list of them.

> As a user  
> So that I can focus on tasks to complete  
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
# EXAMPLE

class TaskManager
  def initialize
    @tasks = []
  end

  def create(task) # task is a string
    # No return value
  end

  def complete(task) # task is a string
    # Returns nothing
  end

  def view
    # Returns the task array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
task_manager = TaskManager.new
task_manager.create('task 1')
task_manager.view # Returns "task 1"

# 2
task_manager = TaskManager.new
task_manager.create('task 1')
task_manager.create('task 2')
task_manager.view #Returns "task 1" "task 2"

# 3
task_manager = TaskManager.new
task_manager.create('task 1')
task_manager.create('task 2')
task_manager.complete('task 1')
task_manager.view #Returns "task 2"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

