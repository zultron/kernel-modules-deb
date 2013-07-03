# This Makefile is only needed in conjunction with the Debian
# autobuilder scripts.

# This needs to be generalized.  We'll do that someday when there are
# more drivers to build.

# Directories to build drivers in
R8168_DIR = r8168-8.035.00

# Download sources
sources:
        make -C $(R8168_DIR) -f debian/rules src/r8168.h

# Build modules
build:
        $(MAKE) -C $(R8168_DIR) -f debian/rules binary-modules
