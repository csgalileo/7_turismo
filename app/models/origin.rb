class Origin < ActiveRecord::Base
	validates_presence_of :description, :message => "- Lo siento, no puedes ingresar un Origine sin descripción."
end
