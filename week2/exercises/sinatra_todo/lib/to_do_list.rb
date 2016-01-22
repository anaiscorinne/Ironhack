require_relative('task.rb')
require 'yaml/store'

class ToDoList
    attr_reader :tasks, :user
    def initialize(user)
        @tasks = []
        @user = user
        @todo_store = YAML::Store.new("../tasks.yml")
    end

    def add_task(content)
    	@tasks.push(content)
    end

    def delete_task(id_to_delete)
    	@tasks = @tasks.delete_if { |task| task.id == id_to_delete }
    end

    def find_task_by_id(id_to_find)
    	@tasks.find do |task| 
    		task.id == id_to_find
    	end
    end

    def sort_by_created(string)
        if string == "ASC"
            sorted_tasks = @tasks.sort do |task_1, task_2|
                task_1.created_at <=> task_2.created_at
            end
        elsif string == "DESC"
            sorted_tasks = @tasks.sort do |task_1, task_2|
                task_2.created_at <=> task_1.created_at
            end
        end
        sorted_tasks
    end

    def save
        @todo_store.transaction do
          @todo_store[@user] = @tasks
        end
    end

    def load_tasks
        @todo_store.transaction do
            @tasks = @todo_store[@user]
        end
        @tasks
    end
end


# tasks = ToDoList.new
# task = Task.new("wash my dog")
# task2 = Task.new("eat pizza")
# tasks.add_task(task)
# tasks.add_task(task2)

# tasks.delete_task(2)