class Location < ActiveRecord::Base
	validates_presence_of :name, :message => "- Lo siento, no puedes ingresar una Ubicación sin nombre."
end
