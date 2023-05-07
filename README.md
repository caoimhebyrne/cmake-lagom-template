## cmake-lagom-template

A minimal project template for building a C++ application using [Lagom](https://github.com/SerenityOS/serenity/tree/master/Meta/Lagom) from [SerenityOS](https://github.com/SerenityOS/serenity).

It also includes some [recommended settings](./.vscode/settings.json) (some from [SerenityOS' documentation](https://github.com/SerenityOS/serenity/blob/master/Documentation/VSCodeConfiguration.md)) for Visual Studio Code.

> **Note**
> It is recommended that you use the [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) extension for Visual Studio Code.

_A lot of the default configuration is suited to mimic the SerenityOS coding style, but feel free to change it! :)_

### Using the template

1. Clone the repository

   ```shell
   $ git clone git@github.com:caoimhebyrne/cmake-lagom-template.git
   ```

2. Set the `SERENITY_SOURCE_DIR` environment variable to your local clone of [SerenityOS/serenity](https://github.com/SerenityOS/serenity). (Optional, reduces build time)

   **.bashrc/zshrc**

   ```shell
   ...
   export SERENITY_SOURCE_DIR=~/path/to/serenity/directory
   ```

3. Replace all instances of `cmake_lagom_template` with your project's name

4. Run the `Scripts/setup.sh` script

   ```shell
   $ Scripts/setup.sh
   ```

5. Build and run your program with the `Scripts/build-and-run.sh` script!

   ```shell
   $ Scripts/build-and-run.sh
   ```

### Special thanks

The following repositories and people helped with creating this template:

- [linusg/test262](https://github.com/linusg/libjs-test262): Being a reference for our `CMakeLists.txt`
- [SerenityOS/ladybird](https://github.com/SerenityOS/ladybird): An up-to-date `CMake/FetchLagom.cmake` script
- [SerenityOS/serenity](https://github.com/SerenityOS/serenity): `clang-format` configuration
- ❤️ And everyone at the [SerenityOS](https://github.com/SerenityOS) project for making an amazing collection of libraries to use! ❤️

### License

[MIT](https://choosealicense.com/licenses/mit/)
