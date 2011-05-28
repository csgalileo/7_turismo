class Event < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :description, :message => "- Lo siento, no puedes ingresar un Evento sin descripcion."
	validates_presence_of :title, :message => "- Lo siento, no puedes ingresar un Evento sin descripcion."
end
