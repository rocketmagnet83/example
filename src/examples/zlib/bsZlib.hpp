
#ifdef __cpuscpus
	extern "C" {
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "zlib.h"
#endif

#if defined(MSDOS) || defined(OS2) || defined(WIN32) || defined(__CYGWIN__)
#  include <fcntl.h>
#  include <io.h>
#  define SET_BINARY_MODE(file) setmode(fileno(file), O_BINARY)
#else
#  define SET_BINARY_MODE(file)
#endif

#include <string>

class bsZlib {
public:
	bsZlib();
	bsZlib(const char *filename);
	~bsZlib();

	/** 
	 * Decompress a zlib or tar.gz archive 
	 * \param dest The desitnation buffer.
	 * \param source the source buffer with the compressed ata
	 **/
	int encode();
	
	/** 
	 * Decompress a zliv or tar.gz archive 
	 * \param dest The desitnation buffer.
	 * \param source the source buffer with the compressed ata
	 **/
	int decode();

private:


protected:
	std::string m_filename = nullptr;

};


