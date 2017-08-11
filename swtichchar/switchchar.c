#include <stdlib.h>
#include <stdio.h>
extern char * subs( char *string, char this_c, char that_c ) ;
int main(int argc, char *argv[] )
{
	char this_c = 'e';
	char that_c = 'X';
	char orgstr[] = "sir sid easily teases sea sick seals";
	char * result;
	result = subs( orgstr, this_c, that_c );
	printf( "Original string: %s\n", orgstr );
	printf( "Changed string: %s\n", result );
	return 0;
}