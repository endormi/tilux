#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

void handler(int sig)
{
    printf("\nExiting\n");
    exit(sig);
}

void check_filesize(char filename[])
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

    while (1)
    {
        int MAX = 100;

        char f[MAX];

        printf("Filename: ");
        scanf("%s", f);

        check_filesize(f);
    }
    return 0;
}
