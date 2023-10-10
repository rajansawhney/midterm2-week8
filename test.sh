echo "Running tests..."
echo

echo "*****"
echo
echo "Fahrenheit to Celsius conversion..."
output_f_to_c=$(./fahrenheit_to_celsius)
echo $output_f_to_c
expected_output_f_to_c="
0       -17
20      -6
40      4
60      15
80      26
100     37
120     48
140     60
160     71
180     82
200     93
220     104
240     115
260     126
280     137
300     148"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_f_to_c == *$expected_output_f_to_c* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_f_to_c' but got: $output_f_to_c"
  exit 1
fi

echo
echo "*****"
echo
echo "Simple banking system..."

echo
echo "2 - Deposit funds"
output_banking_system=$(./banking_system <test/input_banking_deposit)
echo $output_banking_system
expected_output_banking_system="1000.00"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_banking_system == *$expected_output_banking_system* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_banking_system' but got: $output_banking_system"
  exit 1
fi

echo
echo "3 - Withdraw funds"
echo
output_banking_system=$(./banking_system <test/input_banking_withdraw)
echo $output_banking_system
expected_output_banking_system="500.00"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_banking_system == *$expected_output_banking_system* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_banking_system' but got: $output_banking_system"
  exit 1
fi

echo "1 - Check balance"
echo
output_banking_system=$(./banking_system <test/input_banking_check_balance)
echo $output_banking_system
expected_output_banking_system="500.00"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_banking_system == *$expected_output_banking_system* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_banking_system' but got: $output_banking_system"
  exit 1
fi

echo "4 - Exit"
echo
output_banking_system=$(./banking_system <test/input_banking_exit)
echo $output_banking_system
expected_output_banking_system="Exiting"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_banking_system == *$expected_output_banking_system* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_banking_system' but got: $output_banking_system"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0