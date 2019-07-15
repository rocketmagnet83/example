set(BOOST_ADDRESS_MODEL 64)

set(BOOST_HARVEST_CMD echo .)
set(BOOST_CONFIGURE_COMMAND ./bootstrap.sh)
set(BOOST_BUILD_COMMAND ./b2)
set(BOOST_BUILD_OPTIONS --disable-icu boost.locale.icu=off)
set(BOOST_PATCH_COMMAND echo .)
set(BOOST_OPTIONS
	--with-filesystem
	--with-locale
	--with-thread
	--with-regex
	--with-system
	--with-date_time
	--with-wave
	--with-atomic
	--with-serialization
	--with-program_options
	--with-iostreams
	--with-python
)


ExternalProject_Add(external_boost
	URL ${BOOST_URL}
	DOWNLOAD_DIR download/boost
	URL_HASH MD5=${BOOST_HASH}
	PREFIX ${OUTPUT_PATH}/boost
	UPDATE_COMMAND	""
	PATCH_COMMAND ${BOOST_PATCH_COMMAND}
	CONFIGURE_COMMAND ${BOOST_CONFIGURE_COMMAND}
	BUILD_COMMAND ${BOOST_BUILD_COMMAND} ${BOOST_BUILD_OPTIONS} -j${PROCESSOR_COUNT} architecture=x86 address-model=${BOOST_ADDRESS_MODEL} link=static threading=multi ${BOOST_OPTIONS}	--prefix=${OUTPUT_PATH}/boost install
	BUILD_IN_SOURCE 1
	INSTALL_COMMAND "${BOOST_HARVEST_CMD}"
)

