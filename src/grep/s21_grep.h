#ifndef SRC_GREP_S21_GREP_H_
#define SRC_GREP_S21_GREP_H_

#define MAX_LEN 1024

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <regex.h>

struct flags_grep;
int flag_f(char *stroka, struct flags_grep *opt);
int pars_flags(int argc, char *argv[], struct flags_grep *opt);
void pars_files(struct flags_grep opt);

#endif  // SRC_GREP_S21_GREP_H_
