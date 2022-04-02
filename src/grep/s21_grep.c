#include "s21_grep.h"

#define MAX_LEN 1024

struct flags_grep {
    int e;
    int i;
    int v;
    int c;
    int l;
    int n;
    int h;
    int s;
    int f;
    int o;
    int count_pattern;
    int count_flag;
    int count_file;
    char **pattern;
    char **filename;
};

int flag_f(char *stroka, struct flags_grep *opt) {
    int error = 0;
    FILE *file = fopen(stroka, "rt");
    if (file == NULL) {
        printf("grep: %s: No such file or directory\n", stroka);
        error = -1;
    } else {
        char *line = NULL;
        size_t len = 0;
        while (getline(&line, &len, file) != -1) {
            int tmp_len = strlen(line);
            int str_len = line[tmp_len - 1] == '\n' ? tmp_len : tmp_len + 1;
            snprintf(opt->pattern[opt->count_pattern++], str_len, "%s", line);
        }
        free(line);
        fclose(file);
    }
  return error;
}

int pars_flags(int argc, char *argv[], struct flags_grep *opt) {
    char simb_err;
    int flag = 0;
    int error = 0;
    size_t index_e = 1;
    for (int i = 1; i < argc; ++i) {
        if (argv[i][0] == '-') {
                for (size_t j = 1; j < strlen(argv[i]) && flag == 0; j++) {
                    switch (argv[i][j]) {
                        case 'e':
                            opt->e = 1;
                            if (j == strlen(argv[i] + 1)) {
                                i++;
                                snprintf(opt->pattern[opt->count_pattern++], MAX_LEN, "%s", argv[i]);
                                flag++;
                            } else if (index_e != strlen(argv[i]) - 1) {
                                snprintf(opt->pattern[opt->count_pattern++], MAX_LEN, "%s", &argv[i][++j]);
                                flag++;
                            }
                            break;
                        case 'f':
                            opt->f = 1;
                            opt->count_flag++;
                            if (j == strlen(argv[i]+1)) {
                                i++;
                                error = flag_f(argv[i], opt);
                                flag++;
                            } else if (index_e != strlen(argv[i]) - 1) {
                                error = flag_f(&argv[i][++j], opt);
                                flag++;
                            }
                            break;
                        case 'i':
                            opt->i = 1;
                            break;
                        case 'v':
                            opt->v = 1;
                            break;
                        case 'c':
                            opt->c = 1;
                            break;
                        case 'l':
                            opt->l = 1;
                            break;
                        case 'n':
                            opt->n = 1;
                            break;
                        case 'h':
                            opt->h = 1;
                            break;
                        case 's':
                            opt->s = 1;
                            break;
                        case 'o':
                            opt->o = 1;
                            break;
                        default:
                            simb_err = argv[i][j];
                            printf("grep: invalid option —- %c\nusage: grep [-eivclnhs]\n", simb_err);
                            opt->count_flag = -1;
                            error = -1;
                            exit(1);
                    }
                }
        } else if (opt->count_pattern == 0) {
            snprintf(opt->pattern[opt->count_pattern++], MAX_LEN, "%s", argv[i]);
        } else {
            snprintf(opt->filename[opt->count_file++], MAX_LEN, "%s", argv[i]);
        }
    }
    return error;
}

void pars_files(struct flags_grep opt) {
    for (int i = 0; i < opt.count_file; ++i) {
        FILE *file = fopen(opt.filename[i], "rt");
        if (file == NULL) {
            if (!opt.s) {
                printf("grep: %s: No such file or directory\n", opt.filename[i]);
            }
        } else {
            char *line = NULL;
            size_t len = 0;
            int count_strok = 0, count_ex_file = 0, read, count_line = 1;
            int reg_match = 1;
            while ((read = getline(&line, &len, file)) != -1) {
                for (int j = 0; j < opt.count_pattern; ++j) {
                    regex_t preg;
                    int reg_option = opt.i ? REG_ICASE : REG_EXTENDED;
                    regcomp(&preg, opt.pattern[j], reg_option);
                    reg_match = regexec(&preg, line, 0, 0, 0);
                    if (reg_match == 0) {
                        j = opt.count_pattern;
                    }
                    if (opt.o == 1) {
                        char* str_ptr = (char*)line;
                        if (!opt.v) {
                            regmatch_t match;
                            while (!regexec(&preg, str_ptr, 1, &match, 0)) {
                                printf("%.*s\n", (int)(match.rm_eo - match.rm_so), str_ptr + match.rm_so);
                                str_ptr += match.rm_eo;
                            }
                            regfree(&preg);
                        }
                    }
                regfree(&preg);
            }
            if (opt.v == 1) {
                if (reg_match) {
                    reg_match = 0;
                } else {
                    reg_match = 1;
                }
            }
            if (!reg_match) {
                count_strok++;
                count_ex_file = 1;
            }
            if (!reg_match && !opt.c && !opt.l && !opt.o) {
                if (opt.n == 1) printf("%d:", count_line);
                printf("%s", line);
                int srt_len = strlen(line);
                if (line[srt_len - 1] != '\n')
                printf("\n");
            }
            count_line++;
      }
      if (opt.c) {
          if (opt.count_file > 1 && !opt.h) {
              printf("%s:", opt.filename[i]);
              }
              if (opt.l && count_strok) {
                  count_strok = 1;
                }
        printf("%d\n", count_strok);
        count_strok = 0;
      }
      if (opt.l && count_ex_file == 1) {
        printf("%s\n", opt.filename[i]);
        count_ex_file = 0;
      }
      free(line);
      fclose(file);
    }
  }
}

int main(int argc, char *argv[]) {
    struct flags_grep opt;
    opt.e = 0, opt.f = 0, opt.i = 0, opt.v = 0, opt.c = 0, opt.l = 0,
    opt.n = 0, opt.h = 0, opt.s = 0, opt.count_flag = 0, opt.o = 0,
    opt.count_file = 0, opt.count_pattern = 0;
    opt.pattern = (char **)malloc(MAX_LEN * sizeof(char *));
    opt.filename = (char **)malloc(MAX_LEN * sizeof(char *));
    for (int i = 0; i < MAX_LEN; i++) {
        opt.pattern[i] = (char *)malloc(MAX_LEN * sizeof(char));
        opt.filename[i] = (char *)malloc(MAX_LEN * sizeof(char));
    }
    int err_flag = pars_flags(argc, argv, &opt);
    if (!err_flag) {
        pars_files(opt);
    }
    for (int i = 0; i < MAX_LEN; i++) {
        free(opt.pattern[i]);
        free(opt.filename[i]);
    }
    free(opt.pattern);
    free(opt.filename);
    return 0;
}
