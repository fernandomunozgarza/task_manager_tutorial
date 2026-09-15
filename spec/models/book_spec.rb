require 'rails_helper'

RSpec.describe Book, type: :model do
    it "is valid with a title" do
        book = Book.new(title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01")
        expect(book).to be_valid
    end

    it "is invalid without a title" do
        book = Book.new(title: nil, author: "John Doe", price: 9.99, published_date: "2023-01-01")
        expect(book).to_not be_valid
    end

    it "is invalid without an author" do
        book = Book.new(title: "My Book", author: nil)
        expect(book).to_not be_valid
    end

    it "is invalid without a price" do
        book = Book.new(title: "My Book", author: "John Doe", price: nil)
        expect(book).to_not be_valid
    end

    it "is invalid without a published date" do
        book = Book.new(title: "My Book", author: "John Doe", price: 9.99, published_date: nil)
        expect(book).to_not be_valid
    end

    it "is valid with an author" do
        book = Book.new(title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01")
        expect(book).to be_valid
    end

    it "is valid with a price" do
        book = Book.new(title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01")
        expect(book).to be_valid
    end

    it "is valid with a published date" do
        book = Book.new(title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01")
        expect(book).to be_valid
    end
end
