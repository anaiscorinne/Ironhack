class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@completed
    end

    def complete!
    	@completed = true
    end

    def make_incomplete!
    	@completed = false
    end

    def update_content!(content)
    	@updated_at = Time.now
    	@content = content	

        puts "Your updated task is now #{content}"
        puts "You updates your list at #{@updated_at}"
    end

end

# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id

# puts task2.complete?
# puts task2.complete!
# puts task2.complete?

