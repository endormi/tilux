#include <stdio.h>
#include <stdlib.h>
#include <sys/sysinfo.h>
#include "sys.h"
#include "../tools/handler.h"

int main()
{
    signal(SIGINT, handler);

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
    mins = (info.uptime / 60) - (days * 1440) - (hours * 60);

    printf("Uptime: %d days, %d hours, %d minutes, %ld seconds\n", days, hours,
           mins, info.uptime % 60);

    printf("Total Ram: %ldk Free: %ldk\n", info.totalram / c, info.freeram / c);

    printf("Shared Ram: %ldk\n", info.sharedram / c);
    printf("Buffered Ram: %ldk\n", info.bufferram / c);

    printf("Total Swap: %ldk Free: %ldk\n", info.totalswap / c,
           info.freeswap / c);

    printf("Number of processes: %d running\n", info.procs);

    return 0;
}
