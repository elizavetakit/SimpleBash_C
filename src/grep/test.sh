# ---Grep tests---
test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---ne flag —-
for file in tests/simple_tests/*; do
grep aboba $file > origin_test;
./s21_grep aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "simp_test [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "simp_test [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag e---
for file in tests/e_flag_tests/*; do
grep -e aboba $file > origin_test;
./s21_grep -e aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "e_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "e_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag i---
for file in tests/i_flag_tests/*; do
grep -i aboba $file > origin_test;
./s21_grep -i aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "i_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "i_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag c---
for file in tests/c_flag_tests/*; do
grep -c aboba $file > origin_test;
./s21_grep -c aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "c_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "c_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag l---
for file in tests/l_flag_tests/*; do
grep -l aboba $file > origin_test;
./s21_grep -l aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "l_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "l_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag n---
for file in tests/n_flag_tests/*; do
grep -n aboba $file > origin_test;
./s21_grep -n aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "n_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "n_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag h---
for file in tests/h_flag_tests/*; do
grep -h aboba $file > origin_test;
./s21_grep -h aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "h_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "h_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag s---
for file in tests/s_flag_tests/*; do
grep -s aboba $file > origin_test;
./s21_grep -s aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "s_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "s_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"

test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag f---
for file in tests/f_flag_tests/*; do
grep -ftests/f_flag_tests/c_flag_test1.txt $file > origin_test;
./s21_grep -ftests/f_flag_tests/c_flag_test1.txt $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "f_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "f_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag o---
for file in tests/o_flag_tests/*; do
grep -o aboba $file > origin_test;
./s21_grep -o aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "o_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "o_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0

#---flag v---
for file in tests/v_flag_tests/*; do
grep -v aboba $file > origin_test;
./s21_grep -v aboba $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "v_flag [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "v_flag [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"




