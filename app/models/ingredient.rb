class Ingredient < ActiveRecord::Base
	validates :categoria, :inclusion => { :in => ["pizza", "hamburguesa", "bebida", "entrada", "especial"], :message => "Seleccionar una categoria"}
	validates :nombre, :presence => { message: "No puede dejarse vacío" }
	enum categoria: [:seleccionar, :pizza, :hamburguesa, :bebida, :entrada, :especial]
	enum subcategoria: [:_,:tradicional, :premium, :mariscos, :pollo, :res]	
end
