class Service < ActiveRecord::Base
	validates_presence_of :description, :message => "- Lo siento, no puedes ingresar un Servicio sin descripcion."
end
