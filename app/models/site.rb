class Site < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  
  validates_presence_of :title, :message => "- Lo siento, no puedes ingresar un Sitio sin título."
  validates_presence_of :name, :message => "- Lo siento, no puedes ingresar un Sitio sin nombre."
  validates_presence_of :description, :message => "- Lo siento, no puedes ingresar un Sitio sin descripción."
  validates_presence_of :address, :message => "- Lo siento, no puedes ingresar un Sitio sin dirección."
end
