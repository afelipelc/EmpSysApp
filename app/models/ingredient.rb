class Ingredient < ActiveRecord::Base
	validates :categoria, :inclusion => { :in => ["pizza", "hamburguesa", "entrada", "especial"], :message => "Seleccionar una categoría"}
	validates :nombre, :presence => { message: "No puede dejarse vacío" }
	enum categoria: [:seleccionar, :pizza, :hamburguesa, :entrada, :especial]
	enum subcategoria: [:_,:tradicional, :premium, :mariscos, :pollo, :res]
end
