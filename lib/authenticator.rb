# Define a hash of usernames and passwords
users = {
  "Andreas" => "12345",
  "Andre" => "67890",
  "Bob" => "abcd"
}

# Define the maximum number of attempts allowed
MAX_ATTEMPTS = 5

# Initialize the number of failed attempts to 0
failed_attempts = 0

# Prompt the user for their username
puts "Enter your username:"
username = gets.chomp

# Keep prompting the user for their password until the correct password is entered or the maximum number of attempts is exceeded
while failed_attempts < MAX_ATTEMPTS do
  # Prompt the user for their password
  puts "Enter your password:"
  password = gets.chomp

  # Compare the entered password to the stored password for the entered username
  if password == users[username]
    puts "Thank you, you are logged in."
    break
  else
    failed_attempts += 1
    puts "Password is wrong. Please try again."
  end
end

# If the maximum number of attempts is exceeded, print out a message and exit the program
if failed_attempts == MAX_ATTEMPTS
  puts "Sorry, you are blocked."
  exit
  #test

end
