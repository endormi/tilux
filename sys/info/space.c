#include "space.h"
#include "../../tools/handler.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/sysinfo.h>

void info()
{
    int days, hours, mins;
    struct sysinfo info;
    int err = sysinfo(&info);
    if (err != 0)
    {
        printf("Error%d\n", err);
        exit(EXIT_FAILURE);
    }

    days = info.uptime / 86400;
    hours = (info.uptime / 3600) - (days * 24);
    mins = (info.uptime / H) - (days * 1440) - (hours * H);

    printf("Uptime: %d days, %d hours, %d minutes, %ld seconds\n", days, hours,
           mins, info.uptime % H);

    printf("Total Ram: %ldk, Free: %ldk\n", info.totalram / C,
           info.freeram / C);

    printf("Shared Ram: %ldk\n", info.sharedram / C);
    printf("Buffered Ram: %ldk\n", info.bufferram / C);

    printf("Total Swap: %ldk Free: %ldk\n", info.totalswap / C,
           info.freeswap / C);

    printf("Number of processes running: %d\n", info.procs);
}

int main()
{
    signal(SIGINT, handler);
    info();

    return 0;
}
