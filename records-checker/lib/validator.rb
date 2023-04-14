class Validator
  def initialize(data)
    @data = data
  end

  def data_checker
    return "Inválido" unless valid_name? && valid_birthday? && valid_password? && valid_cpf?
    "Válido"
  end

  private

  def valid_name?
    !@data[:nome_completo].nil? && @data[:nome_completo].strip.split.size >= 2
  end

  def valid_birthday?
    birthday = Date.strptime(@data[:aniversario], "%d/%m/%Y") rescue nil
    birthday && birthday <= Date.today
  end

  def valid_password?
    @data[:senha].match?(/[A-Z]/) && @data[:senha].match?(/[a-z]/) && @data[:senha].match?(/[0-9]/) && @data[:senha].length >= 8
  end

  def valid_cpf?
    cpf = @data[:cpf].gsub(/\D/, '')
    return false if cpf.size != 11
    sum = 0
    9.times { |i| sum += (10 - i) * cpf[i].to_i }
    res = sum % 11
    res = res < 2 ? 0 : 11 - res
    return false if res != cpf[9].to_i
    sum = 0
    10.times { |i| sum += (11 - i) * cpf[i].to_i }
    res = sum % 11
    res = res < 2 ? 0 : 11 - res
    return false if res != cpf[10].to_i
    true
  end
end
