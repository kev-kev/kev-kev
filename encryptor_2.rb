class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    Hash[characters.zip(characters.rotate(rotation))]
  end

  def encrypt_letter(letter, rotation)
    cipher_of_rotation = cipher(rotation)
    cipher_of_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")
    encrypted_results = letters.collect do |letter|
      encrypt_letter(letter, rotation)
    end
    encrypted_results.join
  end

  def decrypt(encrypted_message, rotation)
    encrypt(encrypted_message, -rotation)
  end

end
