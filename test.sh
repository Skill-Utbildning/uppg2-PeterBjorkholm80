echo "Running tests..."
echo

output=$(./main.out)

# Read the values into an array
readarray -t values <<< "$output"

# Assign each value to a variable
val1=${values[0]}
val2=${values[1]}
val3=${values[2]}
val4=${values[3]}
val5=${values[4]}
val6=${values[5]}
val7=${values[6]}
val8=${values[7]}

expected_output="75"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$val1" == "14" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '14' but got: $val1"
  exit 1
fi

if [ "$val2" == "9" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '9' but got: $val2"
  exit 1
fi

if [ "$val3" == "18" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '18' but got: $val3"
  exit 1
fi

if [ "$val4" == "20" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '20' but got: $val4"
  exit 1
fi

if [ "$val5" == "20" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '20' but got: $val5"
  exit 1
fi

if [ "$val6" == "19" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '19' but got: $val6"
  exit 1
fi

if [ "$val7" == "380" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '380' but got: $val7"
  exit 1
fi

if [ "$val8" == "3.8" ] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '3.8' but got: $val8"
  echo "Make sure you are using float and rounding with 1 decimal"
  exit 1
fi

echo
echo "All tests passed."

exit 0
