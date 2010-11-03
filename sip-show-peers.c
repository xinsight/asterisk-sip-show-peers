
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int main (int argc, char *argv[])
{
  argv[0] = "/usr/sbin/asterisk";
  argv[1] = "-rx";
  argv[2] = "sip show peers";

  execv(*argv, argv);

}

