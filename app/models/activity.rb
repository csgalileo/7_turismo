class Activity < ActiveRecord::Base
	validates_presence_of :Description, :message => "- Lo siento, no puedes ingresar una Actividad sin descripcion."
end
