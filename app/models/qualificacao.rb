class Qualificacao < ActiveRecord::Base
	
	belongs_to :cliente
	belongs_to :restaurante

	validates_presence_of :cliente_id, :restaurante_id
	validates_associated :cliente, :restaurante

end
