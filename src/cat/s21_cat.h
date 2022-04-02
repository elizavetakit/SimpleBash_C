#ifndef SRC_CAT_S21_CAT_H_
#define SRC_CAT_S21_CAT_H_

#include <stdio.h>
#include <string.h>

struct flags_cat;
void open_files(char *file, struct flags_cat opt);
void pars_files(int argc, char *argv[], struct flags_cat opt);
int pars_flags(int argc, char *argv[], struct flags_cat *opt);

#endif  // SRC_CAT_S21_CAT_H_
