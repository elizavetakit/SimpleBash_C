#include "s21_cat.h"

struct flags_cat {
    int b;
    int v;
    int e;
    int n;
    int s;
    int t;
    int err;
};

void open_files(char *file, struct flags_cat opt) {
    int flag = 0;
    if (opt.err == 1) {
        flag = 1;
    }
    if ( flag == 0 ) {
        FILE *cat_file = fopen(file, "rt");
        if (cat_file == NULL) {
            printf("cat: %s: No such file or directory", file);
        } else {
            char ch;
            int val = 1, new_line = 1, sec_line = 1, th_line = 0;
            ch = getc(cat_file);
            while (!feof(cat_file)) {
                if (opt.b == 1 && new_line && ch != '\n') {
                    printf("%6d\t", val++);
                }
                if (opt.s == 1 && new_line && ch == '\n') {
                    if (th_line) {
                        th_line = -1;
                    }
                }
                if (opt.n == 1 && new_line && opt.b != 1) {
                    if (th_line != -1) {
                        printf("%6d\t", val++);
                    }
                }
                if (opt.e == 1 && ch == '\n') {
                    if (th_line != -1) {
                        printf("$");
                    }
                }
                if (opt.t == 1 && ch == '\t') {
                    printf("^");
                    ch = 'I';
                }
                if (opt.v == 1) {
                    int chr = (int)ch;
                    if (ch < 0) {
                        ch &= 127;
                        chr = (int)ch;
                        chr += 128;
                    }
                if (chr != 9 && chr != 10 && chr < 32) {
                    printf("^");
                    ch += 64;
                } else if (chr == 127) {
                    printf("^");
                    ch = '?';
                } else if (chr > 127 && chr < 160) {
                    printf("M-^");
                    ch = chr - 64;
                    if (ch == 'J' && (opt.b || opt.n)) {
                        printf("%c", ch);
                        printf("%6d\t", val);
                        val += 1;
                    }
                } else if (chr > 160 && chr <= 255) {
                    ch -= 128;
                }
            }
            if (th_line != -1) {
                printf("%c", ch);
            }
            new_line = (ch =='\n') ? 1 : 0;
            th_line = (sec_line && ch == '\n') ? 1 : 0;
            sec_line = (new_line && ch == '\n') ? 1 : 0;
            ch = getc(cat_file);
        }
        }
        fclose(cat_file);
    }
}

void pars_files(int argc, char *argv[], struct flags_cat opt) {
    for (int i = 1; i < argc; ++i) {
        if (argv[i][0] != '-') {
            open_files(argv[i], opt);
        }
    }
}

int pars_flags(int argc, char *argv[], struct flags_cat *opt)  {
    int count_flags = 0;
    char simb_err;
    for (int i = 1; i < argc; ++i) {
        if (argv[i][0] == '-') {
            if (argv[i][1] == '-') {
                for (size_t j = 2; j < strlen(argv[i]); j++) {
                    if (strcmp("--number-nonblank", argv[i]) == 0) {
                        opt->b = 1;
                        count_flags++;
                    } else if ((strcmp("--number", argv[i]) == 0)) {
                        opt->n = 1;
                        count_flags++;
                    } else if ((strcmp("--squeeze-blank", argv[i]) == 0)) {
                        opt->s = 1;
                        count_flags++;
                    } else {
                       simb_err = argv[i][1];
                       count_flags = -1;
                    }
                }
            }
        }
            if (argv[i][0] == '-' && argv[i][1] != '-' && count_flags != -1) {
                for (size_t j = 1; j < strlen(argv[i]); j++) {
                    switch (argv[i][j]) {
                    case 'b':
                        opt->b = 1;
                        break;
                    case 'e':
                        opt->e = 1;
                        opt->v = 1;
                        break;
                    case 'n':
                        opt->n = 1;
                        break;
                    case 's':
                        opt->s = 1;
                        break;
                    case 't':
                        opt->t = 1;
                        opt->v = 1;
                        break;
                    case 'E':
                        opt->e = 1;
                        break;
                    case 'T':
                        opt->t = 1;
                        break;
                    case 'v':
                        opt->v = 1;
                        break;
                    default:
                        simb_err = argv[i][j];
                        opt->err = 1;
                        fprintf(stderr, "cat: illegal option -- %c\n", simb_err);
                        fprintf(stderr, "usage: cat [options] [file ...]\n");
                        count_flags = -1;
                        break;
                    }
                }
            }
    }
    return count_flags;
}

int main(int argc, char *argv[]) {
    struct flags_cat opt = {0};
    int count_flag = pars_flags(argc, argv, &opt);
    if (count_flag != -1) {
        pars_files(argc, argv, opt);
    }
    return 0;
}
