class ApplicationController < Sinatra::Base
   #set :default_content_type, 'application/json'
  
  # Add your routes here
   get "/" do
    '<h2>Hello <em>Jobs Api</em>!</h2>'
   end
  
  get '/jobs' do
      # get all the games from the database
      jobs = Job.all
      # return a JSON response with an array of all the game data
      jobs.to_json
  end
  

end
