#!bin/bash

echo "========================"
echo "WELCOME TO TEST FRAMEWORK"
echo "========================="
FEATURE_DIR=$1
TAG=$2
ROBOT_ARGS=$@

function run_test()
{
echo "running test case ...."
robot . ${FEATURE_DIR} --include  ${TAG} ${ROBOT_ARGS}
echo "Testing completed"
}


function usage()
{
echo "run_test.sh <feature_dir> <tag_name> <robot_args>"
exit 1
}

##main 
run_test ${ROBOT_ARGS}
