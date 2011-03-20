class Department < ActiveRecord::Base
	validates_presence_of :Name, :message => "- Lo siento, no puedes ingresar un Departamento sin nombre."
end
