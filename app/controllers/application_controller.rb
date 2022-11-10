class ApplicationController < Sinatra::Base
   set :default_content_type, 'application/json'
  
  # Add your routes here
   get '/' do
    '<h2>TechOpenings <em>API</em></h2>'
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

 
  #  get '/jobs/:stack' do
  #    jobs = Job.all
  #    jobs.filter {|job|job.stack.include?(params[:stack]).to_json}
  
  #  end

  # get '/jobs/:recruiter' do
  #    jobs = Job.find_by(recruiter: params[:recruiter])
  #    jobs.to_json
  # end

  # get '/jobs/:recruiter' do |n|
  #   # matches "GET /hello/foo" and "GET /hello/bar"
  #   # params['name'] is 'foo' or 'bar'
  #   # n stores params['name']
  #   "recruiter #{n}!"
  # end
  
  post '/jobs' do
    job = Job.create(title: params[:title], recruiter: params[:recruiter], remote?: params[:remote?], location: params[:location], user_id: params[user_id], stack: params[:stack])
    job.to_json
  end

  delete 'jobs/:id' do
    job = Job.find(params[:id])
    job.destroy 
    job.to_json
  end


##UPDATE
##MORE VIEWS find_by_name

end
