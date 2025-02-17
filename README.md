This library is a convenient collection of files sourced from both the [imgui](https://github.com/ocornut/imgui)and [rlImGui](https://github.com/raylib-extras/rlImGui) GitHub repositories. It serves as a unified interface for developers looking to integrate the powerful GUI capabilities of imgui with the graphics functionality provided by raylib through rlImGui. By consolidating these resources, this library simplifies the setup process and enhances usability, allowing users to focus on building their applications without the hassle of managing multiple dependencies. Whether you are developing games or graphical applications, this library provides an efficient way to leverage the strengths of both imgui and rlImGui in a single, easy-to-use package.



####
Final artifact will be located in ./build/lib


``` console
$ mkdir -p build
$ cd build
$ cmake .. -DRL_BRIDGE_RAYLIB_LIBRARY_DIR="/path/to/raylib"
$ make
```

``` cmake
set(RL_BRIDGE_RAYLIB_LIBRARY_DIR "/path/to/raylib")
```
