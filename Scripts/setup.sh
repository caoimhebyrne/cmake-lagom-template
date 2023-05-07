# Amended from https://github.com/linusg/libjs-test262/blob/main/setup.sh

# Copyright (c) 2023, Caoimhe Byrne <caoimhebyrne06@gmail.com>
#
# SPDX-License-Identifier: MIT

#
# setup.sh
# Generates build files via cmake, using Ninja for building
#

BUILD_DIRECTORY="Build"

# Create the `Build` directory, if it doesn't exist already
if [ ! -d "${BUILD_DIRECTORY}" ]
then
    mkdir "${BUILD_DIRECTORY}"
fi

cd "${BUILD_DIRECTORY}"

# Generate cmake files
cmake -GNinja .. -DSERENITY_SOURCE_DIR="${SERENITY_SOURCE_DIR}"

# Change back to the source directory
cd ..
