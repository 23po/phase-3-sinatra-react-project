class ApplicationController < Sinatra::Base
  #  set :default_content_type, 'application/json'
  
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

   
  get '/jobs/:user_id' do
    jobs = Job.all
    filteredJobs = jobs.find_all {|job| job.user_id == params[:user_id].to_i}
    
    filteredJobs.to_json
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
    job = Job.create(
      title: params[:title], 
      recruiter: params[:recruiter],  
      location: params[:location],  
      stack: params[:stack],
      user_id: params[:user_id])
    job.to_json
  end

  delete 'jobs/:id' do
    job = Job.find(params[:id])
    job.destroy
    job.to_json
  end

  get '/users' do 
    users = User.all
    users.to_json
  end

  get '/users/:name' do
    user = User.find_by(name: params[:name])
    user.to_json
  end

end
