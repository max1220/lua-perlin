#!/usr/bin/env luajit
local perlin = require("perlin")
local outfd
if arg[1] == "-" then
	outfd = io.stdout
else
	outfd = assert(io.open(arg[1] or "out.pgm", "w"))
end

local function w(...)
	for _,data in ipairs({...}) do
		outfd:write(data)
	end
end
local function wl(l)
	w(l or "", "\n")
end

local xres = 640
local yres = 480
local xoff = 0
local yoff = 0
local freq = tonumber(arg[2]) or 0.05
local depth = tonumber(arg[3]) or 8
local seed = tonumber(arg[4]) or 1234

wl("P2")
wl(xres)
wl(yres)
wl(255)
wl()

for y=1, yres do
	for x=1, xres do
		local val = perlin.noise2d(x+xoff, y+yoff, freq, depth, seed)
		if x > 100 then
			val = val * (100/x)
		end
		if y > 100 then
			val = val * (100/y)
		end
		wl(math.floor(val*255))
	end
end
