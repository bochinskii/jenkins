echo "### Test is started ##"
INDEX=0
for FILE in `ls ./`
do
  if [ -f index.php ]
  then
   INDEX=$(( $INDEX+1 ))
  fi
done

echo $INDEX
if [ $INDEX -eq 3 ]
then
  echo "Passed"
  exit 0
else
  echo "Failed"
  exit 1
fi
echo "### Test is done ##"
