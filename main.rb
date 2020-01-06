# frozen_string_literal: true
require 'rest-client'

class BingSearch

  URL = 'http://www.bing.com/search?'
  QUERIES = 'q='

  def user_input
      puts 'What would you like to search on Bing? '
      @user_input = gets.chomp
  end

  def create_url
    unless @user_input.to_s.strip.empty?
      @user_input = URL+QUERIES+@user_input
    end
    print @user_input
  end

  def search_result
    @result = RestClient.get(@user_input)
  end

  def display_result
    print @result.code
    print @result.headers
    print @result.cookies
    print @result.body
  end

end

@test1 = BingSearch.new
@test1.user_input
@test1.create_url
@test1.search_result
@test1.display_result
