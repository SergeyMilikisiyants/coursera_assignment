## This is the script for the Unix Workbench course guessing game
echo -e "You are playing the guessing game\n"
function guess_number_of_files {
local true_n_files=$(ls|wc -l)
echo "Enter the guessed number of files in the folder"
local result=0
while [[ result -eq 0 ]]
do
  local guessed_n_files
  read guessed_n_files
  if [[ guessed_n_files -eq true_n_files ]]
  then
    echo "Congratulations! You guessed right!"
    result=1
    
  elif [[ guessed_n_files -gt true_n_files ]]
  then
    echo "The entered  number is too large"
  elif [[ guessed_n_files -lt true_n_files ]]
  then
    echo "The entered number is too small"
  else
    echo "Something went wrong"
    result=1
  fi
done
}
guess_number_of_files
