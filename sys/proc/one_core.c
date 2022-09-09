#include "one_core.h"
#include "../../tools/handler.h"
#include <stdio.h>
#include <time.h>

void run_prime_number(const int max) {
  int i, number = 1;
  int primes = 0;

  for (number = 1; number <= max;) {
    for (i = 2; i <= number;) {
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

int main() {
  clock_t start_time, end_time;
  start_time = clock();

  run_prime_number(MAX_PRIME);

  end_time = clock();
  run_time = (end_time - start_time) / (double)CLOCKS_PER_SEC;
  printf(
      "\nThis machine calculated all prime numbers under %i in %g seconds.\n\n",
      MAX_PRIME, run_time);
}
