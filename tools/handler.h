#ifndef HANDLER_H
#define HANDLER_H
#include <signal.h>
void handler(int sig)
{
  printf("\n");
  return exit(sig);
};
#endif
