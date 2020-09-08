require 'rest-client'
require 'json'
require 'pry'

GOOGLE_BOOKS_API_BASE_URL = "https://www.googleapis.com/books/v1/volumes?q="


def get_search_terms
    puts "What would you like to search for?"
    search_terms = gets.chomp
    return search_terms
end

def make_url(search_params)
    url = GOOGLE_BOOKS_API_BASE_URL + search_params
    url.gsub!(/\s/, "+")
    return url 
end

def get_json(url)
    response = RestClient.get(url)
    json_info = JSON.parse(response)
    return json_info
end

def display_books(book_info)
    book_info.each do |book|
        puts "Title: #{book['volumeInfo']['title']}"
        if book['volumeInfo']['authors']
            puts "Author: #{book['volumeInfo']['authors'].join(" & ")}"
        else
            puts "Author Unknown"
        end
        puts "Description: #{book['volumeInfo']['description']}"
        puts "************************"
    end
end

def run
    search_terms = get_search_terms
    url = make_url(search_terms)
    json = get_json(url)
    display_books(json["items"][0..10])
end

run 





