require 'rails_helper'

RSpec.describe "Books", type: :request do
    it "creates a book successfully" do
        post books_path, params: { book: { title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01" } }
        follow_redirect!
        expect(response.body).to include("Book was successfully created.")
    end

    it "fails to create a book with blank title" do
        post books_path, params: { book: { title: "" } }
        expect(response.body).to include("book not created:")
    end

    it "creates a book with author, price, and published_date" do
        post books_path, params: { book: { title: "My Book", author: "John Doe", price: 9.99, published_date: "2023-01-01" } }
        follow_redirect!
        expect(response.body).to include("Book was successfully created.")
    end

    it "fails to create a book with blank author" do
        post books_path, params: { book: { title: "My Book", author: "", price: 9.99, published_date: "2023-01-01" } }
        expect(response.body).to include("book not created:")
    end

    it "fails to create a book with blank price" do
        post books_path, params: { book: { title: "My Book", author: "John Doe", price: "", published_date: "2023-01-01" } }
        expect(response.body).to include("book not created:")
    end

    it "fails to create a book with blank published_date" do
        post books_path, params: { book: { title: "My Book", author: "John Doe", price: 9.99, published_date: "" } }
        expect(response.body).to include("book not created:")
    end
end
