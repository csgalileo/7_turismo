class Advertisement < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :image_url, :message => "- Lo siento, no puedes ingresar Publicidad sin direccion de una imagen para mostrar."
  validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i, :message => "Ingrese un URL Valido" 
  validates_presence_of :link, :message => "- Lo siento, no puedes ingresar Publicidad sin la direccion externa para mostrar."
end
