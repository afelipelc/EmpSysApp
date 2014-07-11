class Product < ActiveRecord::Base
	#inclusio y categoria deben tener los mismos elementos
	validates :categoria, :inclusion => { :in => ["pizza", "hamburguesa", "bebida", "entrada", "especial"], :message => "Seleccionar una categoria"}
	validates :descripcion, :precio, :presence => { message: "No puede dejarse vacío" }
	enum categoria: [:seleccionar, :pizza, :hamburguesa, :bebida, :entrada, :especial]
	enum subcategoria: [:_,:tradicional, :premium, :mariscos, :pollo, :res]
end
