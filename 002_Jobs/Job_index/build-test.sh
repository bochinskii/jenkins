echo "### Test is started ##"
TEST=`grep "works" index.html | wc -l`
echo $TEST
if [ $TEST -gt 0 ]
then
  echo "Passed"
  exit 0
else
  echo "Failed"
  exit 1
fi
echo "### Test is done ##"
