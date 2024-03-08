# A Framework for Runtime Assurance

This development contains a general framework for formalized reasoning of runtime assurance, which is a design-time architecture for safety critical systems. These systems are modeled as hybrid programs, which allowed modeling of continuously evolving and discretely evolving components. 

The result here is using the formal verification development **P**roper**l**y **A**ssured **I**mplementation of **D**ifferential Dynamic Logic for H**y**brid **P**rogram **V**erification and **S**pecification, **Plaidypvs**. 

The summaries included in this readme describe the human-readable files of the specification. Any other files are used internally by PVS.

## Internal Summary

| Theory Name | Description |
|---|---|
| [`RTA_gen.pvs`](RTA_gen.pvs) | Introduces the generalized framework for RTA. Presents the fundamental theorem of RTA that ensures safety of the systems based on properties of the components |
| [`RTA_fix_wind_ex_turn`](RTA_fix_wind_ex_turn.pvs) | An example of RTA applied to a fix winged aircraft that executes a simple turning maneuver when it exits its prescribed 'safe' region |
| [`RTA_brake_ex`](RTA_brake_ex.pvs) | Applying RTA to braking example with discrete acceleration controller with sampling rate. With RTA architecture vehicle never exits safe region  | 

# Contributors
* J Tanner Slagel, NASA, USA
* [Aaron Dutle](http://shemesh.larc.nasa.gov/people/amd), NASA, USA
* Lauren M. White, NASA, USA 
* César Muñoz, NASA, USA
* Mariano Moscato, AMA Inc, USA

## Maintainer
* J Tanner Slagel, NASA, USA, <j.tanner.slagel@nasa.gov>

