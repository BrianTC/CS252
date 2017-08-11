#include <stdio.h>

extern int charpos( char * str, char lookfor ) ;

void main( int argc, char * argv[] )
{
	char str[] = "This is the string to search" ;
	char lookfor = 'r' ;
	int result ;
	result = charpos( str, lookfor ) ;
	printf( "Character appears at %d\n", result ) ;
	lookfor = 'q' ;
	result = charpos( str, lookfor ) ;
	printf( "Character appears at %d\n", result ) ;
	lookfor = 'T' ;
	result = charpos( str, lookfor ) ;
	printf( "Character appears at %d\n", result ) ;
}
