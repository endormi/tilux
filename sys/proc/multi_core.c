#include "multi_core.h"
#include "../../tools/handler.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

void run_prime_number(const int max)
{
    int i, number = 1;
    int primes = 0;

    for (number = 1; number <= max;)
    {
        for (i = 2; i <= number;)
        {
            if (number % i == 0)
                break;

            i++;
        }

        if (i == number)
            primes++;

        printf("%d prime numbers calculated.\n", primes);
        number++;
    }
}

void multi_core(const int cores)
{
    int t;
    pid_t process_ids[cores];
    pid_t pid;
    pid = fork();

    for (t = 0; t < cores; ++t)
    {
        if (process_ids[t] == -1)
        {
            printf("\nFailed to fork.\n");
            exit(EXIT_FAILURE);
        }
        if (!(process_ids[t] = pid))
        {
            run_prime_number(MAX_PRIME);
            exit(EXIT_SUCCESS);
        }
    }
    for (t = 0; t < cores; ++t)
    {
        waitpid(process_ids[t], NULL, 0);
    }
}

int main()
{
    int CORES;
    printf("Enter a number of cores: ");
    scanf("%d", &CORES);

    clock_t start_time, end_time;
    start_time = clock();

    multi_core(CORES);

    end_time = clock();
    run_time = (end_time - start_time) / (double)CLOCKS_PER_SEC;
    printf("This machine calculated all prime numbers under %i in %f seconds "
           "using %i cores.\n",
           MAX_PRIME, run_time, CORES);
}
