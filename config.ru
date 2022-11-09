require_relative "./config/environment"
# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end
# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController

class App < Sinatra::Base

  get '/veterinarians' do
    vets = Veterinarian.all.order(:id)
    vets.to_json
  end

  get '/veterinarians/:id' do
    vet = Veterinarian.find(params[:id])
    vet.to_json
  end

  get '/patients' do
    pets = Patient.all.order(:id)
    pets.to_json
  end

  get '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.to_json
  end

  delete '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.destroy
    patient.to_json
  end

  get '/owners' do
    owners = Owner.all.order(:id)
    owners.to_json
  end

  get '/owners/:id' do
    owner = Owner.find(params[:id])
    owner.to_json
  end

  get '/appointments' do
    appts = Appointment.all.order(:id)
    appts.to_json
  end

  delete '/appointments/:id' do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end


end

run App