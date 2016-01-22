require_relative('../lib/to_do_list.rb')
require_relative('../lib/task.rb')

describe ToDoList do 
	before :each do 
		 @to_do_list = ToDoList.new
		 @task = Task.new("wash my dog")
		 @task2 = Task.new("eat pizza")
		end

	describe "add_task" do
    it "Adds tasks to To Do List" do
      	expect(@to_do_list.add_task(@task).length).to eq(1)
      	expect(@to_do_list.add_task(@task2).length).to eq(2)
      	# expect(@to_do_list.add_task("Sleep").length).to eq(3)
  		end
	end

	describe "delete_task" do
		it "Deletes a task by its given id" do
			expect(@to_do_list.add_task(@task).length).to eq(1)
      		expect(@to_do_list.add_task(@task2).length).to eq(2)
			expect(@to_do_list.delete_task(@task.id).length).to eq(1)
		end
	end

	describe "find_task_by_id" do
		it "Finds a specific task by its id" do
			expect(@to_do_list.add_task(@task).length).to eq(1)
      		expect(@to_do_list.add_task(@task2).length).to eq(2)
			expect(@to_do_list.find_task_by_id(@task.id)).to eq(@task)
		end
	end

	describe "add_task"
		it "loads saved file" do
			@to_do_list.add_task(@task)
			@to_do_list.add_task(@task2)
			@to_do_list.save
			@to_do_list.load_tasks
		expect(@to_do_list.tasks.length).to eq(2)
	end
end
