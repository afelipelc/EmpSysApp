class Extra < ActiveRecord::Base
	validates :costo, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/, :message => "Ingresar un precio válido" }, :numericality => {:greater_than => 0, :message => "Ingresar un precio mayor que 0"}
	validates :categoria, :inclusion => { :in => ["pizza", "hamburguesa", "entrada", "especial"], :message => "Seleccionar una categoría"}
	validates :nombre, :costo, :presence => { message: "No puede dejarse vacío" }
	enum categoria: [:seleccionar, :pizza, :hamburguesa, :entrada, :especial]
end
