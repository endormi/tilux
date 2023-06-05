#ifndef EXIT_HANDLER_H
#define EXIT_HANDLER_H

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

void handler(int sig) {
  printf("\n");
  return exit(sig);
};

#endif
