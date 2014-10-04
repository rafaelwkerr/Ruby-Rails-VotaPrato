class Restaurante < ActiveRecord::Base

	has_many :qualificacoes
	has_and_belongs_to_many :pratos


	validates_presence_of :nome, message: "campo nome deve ser preenchido"
	validates_presence_of :endereco, message: "campo endereço deve ser preenchido"
	validates_presence_of :especialidade, message: "campos especialidade deve ser preenchido"
	validade :primeira_letra_deve_ser_maiuscula

  private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome,
			"primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
	end


end
