require 'sinatra'
require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/veterinarians' do
    vets = Veterinarian.all.order(:id)
    vets.to_json(include: {appointments: {include: :patient} })
  end

  get '/veterinarians/:id' do
    vet = Veterinarian.find(params[:id])
    vet.to_json(include: { appointments: { include: :patient } })
  end

  get '/patients' do
    pets = Patient.all.order(:id)
    pets.to_json(include: { appointments: { include: :veterinarian } })
  end

  get '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.to_json(include: { appointments: { include: :veterinarian } })
  end

  delete '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.destroy
    patient.to_json(include: { appointments: { include: :veterinarian } })
  end

  post '/patients' do
    patient = Patient.create(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      weight: params[:weight],
      owner_id:params[:owner_id],
      animal_type:params[:animal_type],
      sex:params[:sex]
    )
    patient.to_json(include: { appointments: { include: :veterinarian } })

  end

  patch '/patients/:id' do
    patient = Patient.find(params[:id])
    patient.update(
      name:params[:name],
      breed:params[:breed],
      age:params[:age],
      weight:params[:weight],
      owner_id:params[:owner_id],
      animal_type:params[:animal_type],
      sex:params[:sex]
    )
    patient.to_json(include: { appointments: { include: :veterinarian } })
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

  get '/appointments/:id' do
    appts = Appointment.find(params[:id])
    appts.to_json(include: [:patient, :veterinarian])
  end

  post '/appointments' do
    appointment = Appointment.create(
      veterinarian_id: params[:veterinarian_id],
      patient_id: params[:patient_id],
      date: params[:date],
      time: params[:time]
    )
    appointment.to_json

  end



end
