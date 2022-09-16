class TaskManager
  def initialize
    @tasks = []
  end

  def create(task)
    @tasks.push(task)
  end

  def complete(to_be_removed)
    @tasks = @tasks.select do |task|
      task != to_be_removed
    end
  end

  def view
    @tasks.join(", ")
  end
end