require './person'
require './student'
require './rental'
require './book'
require './teacher'
require './classroom'

module Roles
  def list_books
    @books.each { |book| puts book }
  end

  def list_people
    @people.each { |person| puts person }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice = gets.chomp

    case choice
    when '1'
      creating_student
    when '2'
      creating_teacher
    else
      puts 'That is not a valid input'
      nil
    end
  end

  def creating_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'

    student = Student.new(age: age, name: name, parent_permission: parent_permission, classroom: @classroom)
    @people.push(student)

    puts 'Person created successfully'
  end

  def creating_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age: age, name: name, specialization: specialization)
    @people.push(teacher)

    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)

    puts 'Book created successfully'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, i| puts "#{i}) #{book}" }

    book_i = gets.chomp.to_i

    puts
    puts 'Select a person from the following list by number (not ID)'
    @people.each_with_index { |person, i| puts "#{i}) #{person}" }

    person_i = gets.chomp.to_i

    puts
    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, @people[person_i], @books[book_i])
    @rentals.push(rental)

    puts 'Rental created successfully'
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp

    puts 'Rentals:'

    @rentals.each { |rental| puts rental if rental.person.id == id.to_i }
  end
end
