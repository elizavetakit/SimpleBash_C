#---Cat tests---
test_ok=0
test_fail=0
local_tests=1
all_tests=1
global_ok=0
global_fail=0


#---flag b---
for file in cat_tests/b_flag_tests/*; do
cat -b $file > origin_test;
./s21_cat -b $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "b_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "b_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag be---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/b_flag_tests/*; do
cat -be $file > origin_test;
./s21_cat -be $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "be_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "be_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag bin---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/binary_files_tests/*; do
cat $file > origin_test;
./s21_cat $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "binary_files [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "binary_files [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag bn---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/b_flag_tests/*; do
cat -bn $file > origin_test;
./s21_cat -bn $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bn_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bn_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag bs---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/b_flag_tests/*; do
cat -bs $file > origin_test;
./s21_cat -bs $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bs_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bs_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag bt---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/b_flag_tests/*; do
cat -bt $file > origin_test;
./s21_cat -bt $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bt_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bt_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag bv---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/b_flag_tests/*; do
cat -bv $file > origin_test;
./s21_cat -bv $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bv_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bv_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag e---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -e $file > origin_test;
./s21_cat -e $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "e_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "e_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag eb---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -eb $file > origin_test;
./s21_cat -eb $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "eb_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "eb_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag en---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -en $file > origin_test;
./s21_cat -en $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "en_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "en_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag es---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -es $file > origin_test;
./s21_cat -es $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "es_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "es_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag et---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -et $file > origin_test;
./s21_cat -et $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "et_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "et_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag ev---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/e_flag_tests/*; do
cat -ev $file > origin_test;
./s21_cat -ev $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "ev_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "ev_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag n---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -n $file > origin_test;
./s21_cat -n $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "n_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "n_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag nb---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -nb $file > origin_test;
./s21_cat -nb $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "nb_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "nb_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag ne---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -ne $file > origin_test;
./s21_cat -ne $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "ne_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "ne_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag ns---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -ns $file > origin_test;
./s21_cat -ns $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "ns_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "ns_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag nt---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -nt $file > origin_test;
./s21_cat -nt $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "nt_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "nt_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag nv---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/n_flag_tests/*; do
cat -nv $file > origin_test;
./s21_cat -nv $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "nv_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "nv_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


#---flag s---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -s $file > origin_test;
./s21_cat -s $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "s_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "s_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag sb---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -sb $file > origin_test;
./s21_cat -sb $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "sb_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "sb_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag se---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -se $file > origin_test;
./s21_cat -se $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "se_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "se_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag st---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -st $file > origin_test;
./s21_cat -st $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "st_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "st_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag sv---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -sv $file > origin_test;
./s21_cat -sv $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "sv_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "sv_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag sn---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/s_flag_tests/*; do
cat -sn $file > origin_test;
./s21_cat -sn $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "sn_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "sn_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag t---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -t $file > origin_test;
./s21_cat -t $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "t_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "t_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag tb---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -tb $file > origin_test;
./s21_cat -tb $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "tb_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "tb_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag te---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -te $file > origin_test;
./s21_cat -te $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "te_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "te_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag tn---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -tn $file > origin_test;
./s21_cat -tn $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "tn_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "tn_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag ts---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -ts $file > origin_test;
./s21_cat -ts $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "ts_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "ts_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag tv---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/t_flag_tests/*; do
cat -tv $file > origin_test;
./s21_cat -tv $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "tv_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "tv_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
local_tests=1
test_fail=0
test_ok=0


#---flag all_flag---
local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/all_flag_tests/*; do
cat -b $file > origin_test;
./s21_cat -b $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "b_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "b_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/all_flag_tests/*; do
cat -e $file > origin_test;
./s21_cat -e $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "e_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "e_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/all_flag_tests/*; do
cat -n $file > origin_test;
./s21_cat -n $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "n_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "n_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/all_flag_tests/*; do
cat -s $file > origin_test;
./s21_cat -s $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "s_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "s_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/all_flag_tests/*; do
cat -t $file > origin_test;
./s21_cat -t $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "t_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "t_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/binary_files_tests/*; do
cat $file > origin_test;
./s21_cat $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bin_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bin_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"


local_tests=1
test_fail=0
test_ok=0

for file in cat_tests/simple_tests/*; do
cat $file > origin_test;
./s21_cat $file > my_test;
cmp origin_test my_test;
if [ $? -eq 0 ]; then
echo "bin_flag_tests [$local_tests] OK"
((test_ok++))
((global_ok++))
else
echo "bin_flag_tests [$local_tests] FAIL with $fail"
((test_fail++))
((global_fail++))
fi
((local_tests++))
((global_tests++))
rm origin_test my_test
done
echo "FAIL = [$test_fail], OK = [$test_ok]"
echo "FAIL = [$global_fail], OK = [$global_ok], ALL = [$global_tests]"
