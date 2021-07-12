require 'rails_helper'

RSpec.describe Book, type: :model do
  before(:all) do
    @book = Book.create(title: "geometria", description: "primo libro di youstud" )
  end

  it 'checks that a book can be created' do
    expect(@book).to be_valid
  end

  it 'checks that a book can be read' do
    expect(Book.find_by_title("geometria")).to eq(@book)
  end

  it 'checks that a book can be updated' do
    @book.update(:title => "analisi - Remastered")
    expect(Book.find_by_title("analisi1 - Remastered")).to eq(@book)
  end

  it 'checks that a book can be destroyed' do
    @book.destroy
    expect(Book.count).to eq(0)
  end
end
