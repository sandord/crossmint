#include <mint/osbind.h>

int main(void)
{
   char *message = "Press any key";

   while (*message)
   {
      Bconout(0, *message++);
   }

   Bconin(0);
}
