#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>


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
    printf("\nFile: %s is %ld %s\n", filename, statbuf.st_size, "bytes");
}


int main()
{
    int MAX = 100;

    char f[MAX];

    printf("Filename: ");
    scanf("%s", f);

    check_filesize(f);
}
