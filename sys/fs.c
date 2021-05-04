#include "fs.h"
#include "../tools/handler.h"
#include "sys.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

void check_filesize(const char* filename)
{
    int fd;
    struct stat statbuf;

    fd = open(filename, O_RDONLY, S_IRUSR | S_IRGRP);
    if (fd == -1)
    {
        printf("\nfailed to open %s\n", filename);
        exit(EXIT_FAILURE);
    }

    if (fstat(fd, &statbuf) == -1)
    {
        printf("\nfailed to fstat %s\n", filename);
        exit(EXIT_FAILURE);
    }
    printf("File: %s is %ld %s\n", filename, statbuf.st_size, "bytes\n");
}

int main()
{
    signal(SIGINT, handler);

    char f[MAX];
    printf("Filename: ");
    scanf("%[^\n]", f);

    if (strlen(f) == 0)
    {
        printf("Filename cannot be empty!\n");
        exit(EXIT_FAILURE);
    }

    check_filesize(f);
    return 0;
}
