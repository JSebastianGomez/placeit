class FuncionValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:dia, "Ya hay una función en ese día. Escoja otra.") if Funcion.where(dia: record.dia).count.positive?
  end
end
