lua-perlin
==========

Description
-----------
A simple 2D perlin noise function for Lua.
DO NOT use this in any security-related things!
The actuall implementation was heavily inspired from this Gist: https://gist.github.com/nowl/828013


Build
-----

    make

The build module is perlin.so.
Install by putting perlin.so in Lua's package.cpath:

    lua -e "print("", package.cpath:gsub(';', '\n'):gsub('?', '[?]'))"





Usage
-----
The library exports 1o function, noise2d:

perlin2d(x,y,freq,depth)

parameters x and y are the position in the noise function,
freq is the frequency of the noise function, and
depth is the ammount of samples to generate.



ToDo
----

 * 1D/3D Noise function
 * configurable seed
 * non-interpolated 1d/2d/3d noise functions
