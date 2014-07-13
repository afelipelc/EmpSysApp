class Product < ActiveRecord::Base
	#inclusio y categoria deben tener los mismos elementos
	validates :precio, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/, :message => "Ingresar un precio válido" }, :numericality => {:greater_than => 0, :message => "Ingresar un precio mayor que 0"}
	validates :categoria, :inclusion => { :in => ["pizza", "hamburguesa", "bebida", "entrada", "especial"], :message => "Seleccionar una categoría"}
	validates :descripcion, :precio, :presence => { message: "No puede dejarse vacío" }
	enum categoria: [:seleccionar, :pizza, :hamburguesa, :bebida, :entrada, :especial]
	enum subcategoria: [:_,:tradicional, :premium, :mariscos, :pollo, :res]
end
