class ApplicationController < Sinatra::Base
   #set :default_content_type, 'application/json'
  
  # Add your routes here
   get '/' do
    erb :index
   end
  
  get '/jobs' do
      # get all the games from the database
      jobs = Job.all
      # return a JSON response with an array of all the game data
      jobs.to_json
  end

  get '/jobs/:id' do
    job = Job.find(params[:id]) 
    job.to_json
  end

  get 'jobs/:stack' do
    job = Job.find_by(:stack, params[:stack])
    job.to_json
  end

  get 'jobs/:recruiter' do
    job = Job.find_by(params[:recruiter])
    job.to_json
  end
  
  delete 'jobs/:id' do
    job = Job.find_by(params[:id])
    job.destroy 
    job.to_json
  end



end
