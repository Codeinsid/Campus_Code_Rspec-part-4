class DataControl
  def initialize(data_list)
    @data_list = data_list
  end

  def validate_data_list
    invalid_indexes = []

    @data_list.each_with_index do |data, index|
      is_valid = validate_nome_completo(data[:nome_completo])
      is_valid &&= validate_aniversario(data[:aniversario])
      is_valid &&= validate_senha(data[:senha])
      is_valid &&= valid_cpf?(data[:cpf])

      invalid_indexes << index unless is_valid
    end

    return 'Todos são válidos' if invalid_indexes.empty?

    invalid_indexes
  end

  private

  def validate_nome_completo(nome_completo)
    nome_completo.match?(/^[a-zA-Záàâãéèêíïóôõöúçñ]+(\s+[a-zA-Záàâãéèêíïóôõöúçñ]+)+$/)
  end

  def validate_aniversario(aniversario)
    date = Date.strptime(aniversario, '%d/%m/%Y')
    date <= Date.today
  rescue ArgumentError
    false
  end

  def validate_senha(senha)
    senha.length >= 8 && senha.match?(/[A-Z]/) && senha.match?(/[0-9]/)
  end

  def valid_cpf?(cpf)
    return false unless cpf.match?(/^\d{11}$/)

    cpf_numbers = cpf.chars.map(&:to_i)

    first_digit = calculate_digit(cpf_numbers[0..8], 10)
    return false if cpf_numbers[9] != first_digit

    second_digit = calculate_digit(cpf_numbers[0..9], 11)
    cpf_numbers[10] == second_digit
  end

  def calculate_digit(numbers, factor)
    sum = numbers.each_with_index.map { |num, i| num * (factor - i) }.sum
    remainder = sum % 11
    remainder < 2 ? 0 : 11 - remainder
  end
end