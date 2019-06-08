# ***** BEGIN GPL LICENSE BLOCK *****
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ***** END GPL LICENSE BLOCK *****


ExternalProject_Add(external_lzma
        PREFIX ${CMAKE_BINARY_DIR}/lzma
        URL ${LZMA_URL}
        DOWNLOAD_DIR ${CMAKE_BINARY_DIR}/lzma
		URL_HASH SHA256=${LZMA_HASH}
        CONFIGURE_COMMAND  cd ${CMAKE_BINARY_DIR}/lzma/src/external_lzma/ && ./configure --prefix=${OUTPUT_PATH}/lzma
		BUILD_COMMAND  make -j${PROCESSOR_COUNT}
		BUILD_IN_SOURCE 1
		INSTALL_COMMAND make install
		INSTALL_DIR ${OUTPUT_PATH}/lzma
)
