/* decrypt the string encrypted via revised Caesar shift */
#include <stdio.h>

extern char * decrypt( char * encypt, int shift ) ;

void main( int argc, char * argv[] )
{
	char * result ;			/* pointer to decrypted string */
	char encrypt[] = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD" ;
	//char encrypt[] = "D";
	int i = -3 ;
	printf( "Original encrypted string:%s\n", encrypt ) ;
	result = decrypt( encrypt,i ) ;
	printf( "Decrypt with shift %d          :%s\n", i, result ) ;
}
