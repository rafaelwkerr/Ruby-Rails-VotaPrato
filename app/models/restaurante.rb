class Restaurante < ActiveRecord::Base

	validates_presence_of :nome, message: "campo nome deve ser preenchido"
	validates_presence_of :endereco, message: "campo endereço deve ser preenchido"
	validates_presence_of :especialidade, message: "campos especialidade deve ser preenchido"

	validades_uniqueness_of :nome, message: "nome já cadastrado"
	


	validade :primeira_letra_deve_ser_maiuscula

	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome,
			"primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
	end


end
