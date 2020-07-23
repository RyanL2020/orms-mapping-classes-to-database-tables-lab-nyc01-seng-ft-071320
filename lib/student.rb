class Student

  attr_accessor :name, :grade
  attr_reader :id

  def inititalize(name, grade, id = nil)

    @name = name
    @grade = grade
    @id = nil
  end

  def self.create_table
     sql =  <<-SQL
       CREATE TABLE IF NOT EXISTS songs (
         id INTEGER PRIMARY KEY,
         name TEXT,
         album TEXT
         )
         SQL
     DB[:conn].execute(sql)
   end
end
# Remember, you can access your database connection anywhere in this class
#  with DB[:conn]
