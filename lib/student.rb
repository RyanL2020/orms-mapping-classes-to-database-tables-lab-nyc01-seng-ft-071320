class Student

  attr_accessor :name, :grade, :id
  attr_reader :id
  def inititalize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
     sql =  <<-SQL
       CREATE TABLE IF NOT EXISTS students (
         id INTEGER PRIMARY KEY,
         name TEXT,
         grade TEXT
         )
         SQL
     DB[:conn].execute(sql)
   end

   def drop_table
     
   end 
end
# Remember, you can access your database connection anywhere in this class
#  with DB[:conn]
