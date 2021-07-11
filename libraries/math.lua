--- @class math
math = {}

--- (client/menu/server) No description provided 
--- [https://wiki.facepunch.com/gmod/math.huge]
--- @return void
function math.huge() end

--- (client/menu/server) No description provided 
--- [https://wiki.facepunch.com/gmod/math.pi]
--- @return void
function math.pi() end

--- (client/menu/server) Calculates the absolute value of a number (effectively removes any negative sign). 
--- [https://wiki.facepunch.com/gmod/math.abs]
--- @param x number @ The number to get the absolute value of.
--- @return number
function math.abs(x) end

--- (client/menu/server) Returns the [arccosine](https://en.wikipedia.org/wiki/Arccosine) of the given number. 
--- [https://wiki.facepunch.com/gmod/math.acos]
--- @param cos number @ Cosine value in range of -1 to 1.
--- @return number
function math.acos(cos) end

--- (client/menu/server) Calculates the difference between two angles. 
--- [https://wiki.facepunch.com/gmod/math.AngleDifference]
--- @param a number @ The first angle.
--- @param b number @ The second angle.
--- @return number
function math.AngleDifference(a, b) end

--- (client/menu/server) Gradually approaches the target value by the specified amount. 
--- [https://wiki.facepunch.com/gmod/math.Approach]
--- @param current number @ The value we're currently at.
--- @param target number @ The target value. This function will never overshoot this value.
--- @param change number @ The amount that the current value is allowed to change by to approach the target. (It makes no difference whether this is positive or negative.)
--- @return number
function math.Approach(current, target, change) end

--- (client/menu/server) Increments an angle towards another by specified rate. 
--- [https://wiki.facepunch.com/gmod/math.ApproachAngle]
--- @param currentAngle number @ The current angle to increase
--- @param targetAngle number @ The angle to increase towards
--- @param rate number @ The amount to approach the target angle by
--- @return number
function math.ApproachAngle(currentAngle, targetAngle, rate) end

--- (client/menu/server) Returns the [arcsine](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number. 
--- [https://wiki.facepunch.com/gmod/math.asin]
--- @param normal number @ Sine value in the range of -1 to 1.
--- @return number
function math.asin(normal) end

--- (client/menu/server) Returns the [arctangent](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number. 
--- [https://wiki.facepunch.com/gmod/math.atan]
--- @param normal number @ Tangent value.
--- @return number
function math.atan(normal) end

--- (client/menu/server) functions like [math.atan](https://wiki.facepunch.com/gmod/math.atan)(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output. 
--- [https://wiki.facepunch.com/gmod/math.atan2]
--- @param y number @ Y coordinate.
--- @param x number @ X coordinate.
--- @return number
function math.atan2(y, x) end

--- (client/menu/server) Converts a binary string into a number. 
--- [https://wiki.facepunch.com/gmod/math.BinToInt]
--- @param string string @ Binary string to convert
--- @return number
function math.BinToInt(string) end

--- (client/menu/server) Basic code for  algorithm. 
--- [https://wiki.facepunch.com/gmod/math.BSplinePoint]
--- @param tDiff number @ From 0 to 1, where alongside the spline the point will be.
--- @param tPoints table @ A table of [Vector](https://wiki.facepunch.com/gmod/Vector)s. The amount cannot be less than 4.
--- @param tMax number @ Just leave this at 1.
--- @return Vector
function math.BSplinePoint(tDiff, tPoints, tMax) end

--- (client/menu/server) Basic code for Bezier-Spline algorithm, helper function for [math.BSplinePoint](https://wiki.facepunch.com/gmod/math.BSplinePoint). 
--- [https://wiki.facepunch.com/gmod/math.calcBSplineN]
--- @param i number @ No description provided
--- @param k number @ No description provided
--- @param t number @ No description provided
--- @param tinc number @ No description provided
--- @return number
function math.calcBSplineN(i, k, t, tinc) end

--- (client/menu/server) Ceils or rounds a number up. 
--- [https://wiki.facepunch.com/gmod/math.ceil]
--- @param number number @ The number to be rounded up.
--- @return number
function math.ceil(number) end

--- (client/menu/server) Clamps a number between a minimum and maximum value. 
--- [https://wiki.facepunch.com/gmod/math.Clamp]
--- @param input number @ The number to clamp.
--- @param min number @ The minimum value, this function will **never** return a number less than this.
--- @param max number @ The maximum value, this function will **never** return a number greater than this.
--- @return number
function math.Clamp(input, min, max) end

--- (client/menu/server) Returns the [cosine](https://en.wikipedia.org/wiki/Trigonometric_functions#cos) of given angle. 
--- [https://wiki.facepunch.com/gmod/math.cos]
--- @param number number @ Angle in radians
--- @return number
function math.cos(number) end

--- (client/menu/server) Returns the [hyperbolic cosine](https://en.wikipedia.org/wiki/Cosh_(mathematical_function)) of the given angle. 
--- [https://wiki.facepunch.com/gmod/math.cosh]
--- @param number number @ Angle in radians.
--- @return number
function math.cosh(number) end

--- (client/menu/server) Converts radians to degrees. 
--- [https://wiki.facepunch.com/gmod/math.deg]
--- @param radians number @ Value to be converted to degrees.
--- @return number
function math.deg(radians) end

--- (client/menu/server) Returns the difference between two points in 2D space. Alias of [math.Distance](https://wiki.facepunch.com/gmod/math.Distance). 
--- [https://wiki.facepunch.com/gmod/math.Dist]
--- @param x1 number @ X position of first point
--- @param y1 number @ Y position of first point
--- @param x2 number @ X position of second point
--- @param y2 number @ Y position of second point
--- @return number
function math.Dist(x1, y1, x2, y2) end

--- (client/menu/server) Returns the difference between two points in 2D space. 
--- [https://wiki.facepunch.com/gmod/math.Distance]
--- @param x1 number @ X position of first point
--- @param y1 number @ Y position of first point
--- @param x2 number @ X position of second point
--- @param y2 number @ Y position of second point
--- @return number
function math.Distance(x1, y1, x2, y2) end

--- (client/menu/server) Calculates the progress of a value fraction, taking in to account given easing fractions 
--- [https://wiki.facepunch.com/gmod/math.EaseInOut]
--- @param progress number @ Fraction of the progress to ease, from 0 to 1
--- @param easeIn number @ Fraction of how much easing to begin with
--- @param easeOut number @ Fraction of how much easing to end with
--- @return number
function math.EaseInOut(progress, easeIn, easeOut) end

--- (client/menu/server) Returns the x power of the Euler constant. 
--- [https://wiki.facepunch.com/gmod/math.exp]
--- @param exponent number @ The exponent for the function.
--- @return number
function math.exp(exponent) end

--- (client/menu/server) Floors or rounds a number down. 
--- [https://wiki.facepunch.com/gmod/math.floor]
--- @param number number @ The number to be rounded down.
--- @return number
function math.floor(number) end

--- (client/menu/server) Returns the modulus of the specified values.While this is similar to the % operator, **it will return a negative value if the first argument is negative**, whereas the % operator will return a `positive` value **even if the first operand is negative**. 
--- [https://wiki.facepunch.com/gmod/math.fmod]
--- @param base number @ The base value.
--- @param modulator number @ The modulator.
--- @return number
function math.fmod(base, modulator) end

--- (client/menu/server) **Lua reference description**: Returns `m` and `e` such that `x = m2e`, `e` is an integer and the absolute value of `m` is in the range ((0.5, 1) (or zero when x is zero).Used to split the number value into a normalized fraction and an exponent. Two values are returned: the first is a multiplier in the range `1/2` (**inclusive**) to `1` (**exclusive**) and the second is an integer exponent.The result is such that `x = m*2^e`. 
--- [https://wiki.facepunch.com/gmod/math.frexp]
--- @param x number @ The value to get the normalized fraction and the exponent from.
--- @return number|number
function math.frexp(x) end

--- (client/menu/server) Converts an integer to a binary (base-2) string. 
--- [https://wiki.facepunch.com/gmod/math.IntToBin]
--- @param int number @ Number to be converted.
--- @return string
function math.IntToBin(int) end

--- (client/menu/server) Takes a normalised number and returns the floating point representation. 
--- [https://wiki.facepunch.com/gmod/math.ldexp]
--- @param normalizedFraction number @ The value to get the normalized fraction and the exponent from.
--- @param exponent number @ The value to get the normalized fraction and the exponent from.
--- @return number
function math.ldexp(normalizedFraction, exponent) end

--- (client/menu/server) With one argument, return the natural logarithm of x (to base e).With two arguments, return the logarithm of x to the given base, calculated as log(x)/log(base). 
--- [https://wiki.facepunch.com/gmod/math.log]
--- @param x number @ The value to get the base from exponent from.
--- @param base number @ The logarithmic base.
--- @return number
function math.log(x, base) end

--- (client/menu/server) Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10). 
--- [https://wiki.facepunch.com/gmod/math.log10]
--- @param x number @ The value to get the base from exponent from.
--- @return number
function math.log10(x) end

--- (client/menu/server) Returns the largest value of all arguments. 
--- [https://wiki.facepunch.com/gmod/math.max]
--- @param numbers vararg @ Numbers to get the largest from
--- @return number
function math.max(numbers) end

--- (client/menu/server) Returns the smallest value of all arguments. 
--- [https://wiki.facepunch.com/gmod/math.min]
--- @param numbers vararg @ Numbers to get the smallest from.
--- @return number
function math.min(numbers) end

--- (client/menu/server) Returns the modulus of the specified values. Same as [math.fmod](https://wiki.facepunch.com/gmod/math.fmod). 
--- [https://wiki.facepunch.com/gmod/math.mod]
--- @param base number @ The base value
--- @param modulator number @ Modulator
--- @return number
function math.mod(base, modulator) end

--- (client/menu/server) Returns the integral and fractional component of the modulo operation. 
--- [https://wiki.facepunch.com/gmod/math.modf]
--- @param base number @ The base value.
--- @return number|number
function math.modf(base) end

--- (client/menu/server) Normalizes angle, so it returns value between -180 and 180. 
--- [https://wiki.facepunch.com/gmod/math.NormalizeAngle]
--- @param angle number @ The angle to normalize, in degrees.
--- @return number
function math.NormalizeAngle(angle) end

--- (client/menu/server) Returns x raised to the power y.In particular, math.pow(1.0, x) and math.pow(x, 0.0) always return 1.0, even when x is a zero or a [nan](https://wiki.facepunch.com/gmod/nan). If both x and y are finite, x is negative, and y is not an integer then math.pow(x, y) is undefined. 
--- [https://wiki.facepunch.com/gmod/math.pow]
--- @param x number @ Base.
--- @param y number @ Exponent.
--- @return number
function math.pow(x, y) end

--- (client/menu/server) Converts an angle in degrees to it's equivalent in radians. 
--- [https://wiki.facepunch.com/gmod/math.rad]
--- @param degrees number @ The angle measured in degrees.
--- @return number
function math.rad(degrees) end

--- (client/menu/server) Returns a random float between min and max.See also [math.random](https://wiki.facepunch.com/gmod/math.random) 
--- [https://wiki.facepunch.com/gmod/math.Rand]
--- @param min number @ The minimum value.
--- @param max number @ The maximum value.
--- @return number
function math.Rand(min, max) end

--- (client/menu/server) When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive.See also [math.Rand](https://wiki.facepunch.com/gmod/math.Rand) 
--- [https://wiki.facepunch.com/gmod/math.random]
--- @param m number @ If m is the only parameter: upper limit.If n is also provided: lower limit.If provided, this must be an integer.
--- @param n number @ Upper limit.If provided, this must be an integer.
--- @return number
function math.random(m, n) end

--- (client/menu/server) Seeds the random number generator. The same seed will guarantee the same sequence of numbers each time with [math.random](https://wiki.facepunch.com/gmod/math.random).For shared random values across predicted realms, use [util.SharedRandom](https://wiki.facepunch.com/gmod/util.SharedRandom). 
--- [https://wiki.facepunch.com/gmod/math.randomseed]
--- @param seed number @ The new seed
--- @return void
function math.randomseed(seed) end

--- (client/menu/server) Remaps the value from one range to another 
--- [https://wiki.facepunch.com/gmod/math.Remap]
--- @param value number @ The value
--- @param inMin number @ The minimum of the initial range
--- @param inMax number @ The maximum of the initial range
--- @param outMin number @ The minimum of new range
--- @param outMax number @ The maximum of new range
--- @return number
function math.Remap(value, inMin, inMax, outMin, outMax) end

--- (client/menu/server) Rounds the given value to the nearest whole number or to the given decimal places. 
--- [https://wiki.facepunch.com/gmod/math.Round]
--- @param value number @ The value to round.
--- @param decimals number @ The decimal places to round to.
--- @return number
function math.Round(value, decimals) end

--- (client/menu/server) Returns the [sine](https://en.wikipedia.org/wiki/Trigonometric_functions) of given angle. 
--- [https://wiki.facepunch.com/gmod/math.sin]
--- @param number number @ Angle in radians
--- @return number
function math.sin(number) end

--- (client/menu/server) Returns the [hyperbolic sine](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given angle. 
--- [https://wiki.facepunch.com/gmod/math.sinh]
--- @param number number @ Angle in radians.
--- @return number
function math.sinh(number) end

--- (client/menu/server) Returns the square root of the number. 
--- [https://wiki.facepunch.com/gmod/math.sqrt]
--- @param value number @ Value to get the square root of.
--- @return number
function math.sqrt(value) end

--- (client/menu/server) Returns the tangent of the given angle. 
--- [https://wiki.facepunch.com/gmod/math.tan]
--- @param value number @ Angle in radians
--- @return number
function math.tan(value) end

--- (client/menu/server) Returns the [hyperbolic tangent](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given number. 
--- [https://wiki.facepunch.com/gmod/math.tanh]
--- @param number number @ Angle in radians.
--- @return number
function math.tanh(number) end

--- (client/menu/server) Returns the fraction of where the current time is relative to the start and end times 
--- [https://wiki.facepunch.com/gmod/math.TimeFraction]
--- @param start number @ Start time in seconds
--- @param end number @ End time in seconds
--- @param current number @ Current time in seconds
--- @return number
function math.TimeFraction(start, end, current) end

--- (client/menu/server) Rounds towards zero. 
--- [https://wiki.facepunch.com/gmod/math.Truncate]
--- @param num number @ The number to truncate
--- @param digits number @ The amount of digits to keep after the point.
--- @return number
function math.Truncate(num, digits) end

