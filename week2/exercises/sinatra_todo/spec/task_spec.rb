require_relative('../lib/task.rb')



describe Task do 
	before :each do 
		 @task = Task.new("wash my dog")
		 @task2 = Task.new("eat pizza")
		end
	 
  describe "id" do
    it "Increases the number task that it is each time" do
      expect(@task.id).to eq(1)
      expect(@task2.id).to eq(2)
  		end
	end
describe "complete?" do
	it "Returns the original value of the task." do
	expect(@task.complete?).to eq(false)
	expect(@task2.complete?).to eq(false)
		end
	end
describe "complete!" do
	it "Changes original value of the task." do
	expect(@task.complete!).to eq(true)
	expect(@task2.complete!).to eq(true)
		end
	end
describe "make_incomplete!" do
	it "Returns the original value of the task." do
	expect(@task.make_incomplete!).to eq(false)
	expect(@task2.make_incomplete!).to eq(false)
		end
	end
describe "update_content!" do
	it "Changes content." do
	expect(@task.update_content!("Wash my DOG!")).to eq("Wash my DOG!")
	expect(@task2.update_content!("EAT PIZZA")).to eq("EAT PIZZA")
		end
	end
end