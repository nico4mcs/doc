# Electric Units

In this chapter, we will take a look at the differences between AC and DC.

## DC Direct Current

DC is constant. This means, that it always flows from + to -. DC is usually used for devices with a battery or TVs

![](./media/DC.jpeg)<br>
Image 1: DC

## AC Alternating Current

AC constantly changes its direction. The amount of repetitions (2 direction changes) per second is called Hz e.g. in Switzerland, it is 50Hz, which means it changes the direction 100 times a second. AC is usually used for everything with a motor, like a mixer. But a stove also needs AC power.

![](./media/AC.jpeg)<br>
Image 2: AC

### Frequencies
As said before, Switzerland uses a frequency of 50Hz. Some
countries e.g. the USA use 60Hz.

A complete list of the different frequencies can be found here:

<https://en.wikipedia.org/wiki/Mains_electricity_by_country#Table_of_mains_voltages,_frequencies,_and_plugs>

But what happens if you plug a 50Hz device into a 60Hz plug?

If it is a DC device, it will convert the power, and it does not affect the function of the device. But if it is an AC device, it will run slightly faster. This doesn't have to do anything, but it can overheat and break.
#### Net Time
The net time is the time measured by the frequency of the AC power. E.g. ovens use it in the built-in clock. If the frequency is less than 50Hz, the net time is too slow. If it's more, the net time is too fast. The power distributors constantly try to keep the net time as close as possible to the actual time.
## Units
In this chapter, the different units of electricity are explained.
### Coulomb - Q
Minus one coulomb is equal to the amount of charge from 6,25 * 10<sup>18</sup> electrons.
Unit: C
### Potential Energy - U<sub>E</sub>
**Unit: J**

**Formulas**

$U_E=k_e\frac{Q_1Q_2}{r}$

$k_e$ is called the Coulomb constant. 
Its value is $8,99\*10^9\frac{N\*m^2}{C^2}$

-----

Potential energy is the energy difference of two states.

**Example with gravity:**
We have a stair (One Step is 1 m) with a box $F_g=1N$. On the first step, it has no potential energy.

![](./media/Stair01.svg)

If you move the cube up one step, it now has a potential energy of 1J ($1J=1N\*1M$)

![](./media/Stair02.svg)

Now the potential energy is 3J

![](./media/Stair03.svg)
![Stair03](https://user-images.githubusercontent.com/81629531/190325910-7ad916fe-09fe-437b-818b-9e3bc3589be5.svg)

### Voltage - U

**Unit: V**

**Formulas**

$U=R*I$

$U=\frac{U_E}{Q}$ 

---
Voltage is the amount of potential energy per coulomb.
If we look at the example from before, we see that the cube has a potential energy of 3J

![](./media/Stair03.svg)

If we take two cubes, we have a potential energy of 6J or 3J per cube. And that is the idea of voltage, Joule per Unit.

![](./media/Stair04.svg)

Using that in electricity, we can use the following formula: $U=\frac{U_E}{Q}$ or with Units: $V=\frac{J}{C}$
### Resistance - R
**Unit: Ω**
Resistance blocks a relative amount of the voltage. This is needed so that the voltage can be regulated and doesn't damage components. It can be compared to a sieve, which slows down the water.
### Current - I
**Unit: A**
Current is the amount of coulomb per second.
### Electrical Power - P
**Unit: W**
Electrical power is the amount of energy per second.
## Formulas
<svg width="200" height="200" viewbox="0 0 400 400">

<path 
	  d="
	  M0,395
	  L200,0
	  L400,395
	  z"
	  fill="gray"
	  stroke="Black"
	  stroke-width="10"
	  /> 
<path 
	  d="
	  M100,200
	  L300,200
	  M200,200
	  L200,400"
	  fill="transparent"
	  stroke="Black"
	  stroke-width="10"
	  /> 
<text x="200" y="170" text-anchor="middle" font-size="70pt">U</text>
<text x="160" y="350" text-anchor="end" font-size="70pt">R</text>
<text x="240" y="350" text-anchor="start" font-size="70pt">I</text>
</svg>









// Following are just notes, not doku...

Charge:
Charge is how much each Object is charged. either positive or negative.

Force:
$F=k_e\frac{|q_1||q_2|}{r^2}$
$k_e$ = Coloumbs constant
$q_1$ = Charge of the first pole
$q_2$ = Charge of the second pole
$r$ = distance of the two poles
