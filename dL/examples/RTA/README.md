# A Frameowrk for Runtime Assurance

This development contains a general framework for formalized reasoning of runtime assurance, which is a design-time architecture for safety critical systems. These systems are modeled as hybrid programs, which allowed modeling of continuously evolving and discretely envolving components. 

The result here is using the formal verificaiton development **P**roper**l**y **A**ssured **I**mplementation of **D**ifferential Dynamic Logic for H**y**brid **P**rogram **V**erification and **S**pecification, **Plaidypvs**. 

![logo](./Plaidypvs.png "Plaidypvs logo")
<div style="text-align: right"> Image credit: Esther Conrad </div>

## External Dependencies

![dependency graph](./dL.svg "Dependency Graph")

## Internal Summary

| Theory Name | Description |
|---|---|
| [`RTA_gen.pvs`](RTA_gen.pvs) | Introduces the generalized framework for RTA. Presents the fundamental theorem of RTA that ensures safety of the systems based on properties of the componenets |
| [`RTA_fix_wind_ex_turn`](RTA_fix_wind_ex_turn.pvs) | An example of RTA applied to a fix winged aircraft that executes a simple turning manuver when it exits its percribed 'safe' region |
| [`sem_rel_diff_star`](sem_rel_diff_star.pvs) | Added rule to dL that was required for this development. The rules removes a  STAR operator from Differential program | 
| [`RTA_brake_ex`](RTA_brake_ex.pvs) | Applying RTA to braking example with decrete acceleration controller with sampling rate. With RTA archetecture vehicle never exits safe region  | 


# Contributors
* J Tanner Slagel, NASA, USA
* [Aaron Dutle](http://shemesh.larc.nasa.gov/people/amd), NASA, USA
* Lauren White, NASA, USA 

## Maintainer
* J Tanner Slagel, NASA, USA, <j.tanner.slagel@nasa.gov>

