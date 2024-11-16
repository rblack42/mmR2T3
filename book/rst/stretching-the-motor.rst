Stretching the Motor
####################

The first step in winding a motor is to stretch it out some distance. Exactly how far to stretch is something of an art. The builder gets a "feel" for how much tension they are willing to exert on the motor befor they start winding. Some modelers pull the motor out and hold it for a period of time before beginning to wind. 

As the wind progresses, the modeler moves inward toward the propeller end of the motor. Winding stips when a turn count, or torque value is reached. At that point, the motor is transferred to the model for flight.

Obviously, we will need a device that can perform these steps in our test machine. The obvious solution is to use a linear slide device to accomplish the stretching and relarelaxing of that stretcg as the wind progresses.

Fortunately, there are many parts available these days that will do exactly what we want, largely due to the explosion in computer controlled printers and milling machines of various types.

I found a simple kit that I used to build a basic 1500mm linear slide to serve as the first test bed for my automated tester idea.

Building the Linear Slide
=========================

The kit I ordered is fairly simple to assemble, however what arrived at my home
included no indication of what to do with all the parts. Fortunately, there is
a video link on their website detailing the assembly of the basic slide
`Openbuild Assembly Video <https://www.youtube.com/watch?v=tHn-gffborc>`_.

For reference, here is the parts list for this linear slider: 

Parts list
===========

This table was found on the OpenBuilds website at `this link <https://builds.openbuilds.com/builds/v-slot%e2%84%a2-nema-23-linear-actuator-belt-driven.7821/>`_. It is included here for easy access.

..	csv-table::

	Qty,Part Name,Comments
	1,`V-Slot NEMA 23 Linear Actuator (Belt Driven) <https://builds.openbuilds.com/builds/v-slot%e2%84%a2-nema-23-linear-actuator-belt-driven.7821/>`_,Convenient One Click Bundle
	6,`Low Profile Screws M5 - 8mm <http://openbuildspartstore.com/low-profile-screws-m5/>`_, SKU 946 - Sold in Packs - Need 6 Singles
	2,`Aluminum Spacer - 6mm <http://openbuildspartstore.com/aluminum-spacers/>`_,SKU 90 - Sold in Packs - Need 2 Singles
	1, `Aluminum Spacer - 3mm <http://openbuildspartstore.com/aluminum-spacers/>`_,SKU 175 - Sold in Packs - Need 1 Single
	3, `Double Tee Nuts <http://openbuildspartstore.com/double-tee-nut/>`_,SKU 60
    1,GT3  `(2mm) Timing Pulley - 20 Tooth <https://openbuildspartstore.com/3gt-timing-pulley-20-tooth/>`_,	SKU 830
	2, `Eccentric Spacers - 6mm <http://openbuildspartstore.com/eccentric-spacer/>`_,SKU 226
	4, `Solid V Wheel Kit <http://openbuildspartstore.com/solid-v-wheel-kit/>`_,SKU 480
	1, `Smooth Idler Pulley Kit <http://openbuildspartstore.com/smooth-idler-pulley-wheel-kit/>`_,SKU 550
	1, `Idler Pulley Plate <http://openbuildspartstore.com/idler-pulley-plate/>`_,SKU 570
	1, `Motor Mount Plate for Nema 23 <https://openbuildspartstore.com/motor-mount-plate	-nema-23...>`_,SKU 910
	4, `Cable Ties <http://openbuildspartstore.com/cable-ties-10-pack/>`_,SKU 675 - Sold in Packs - Need 4 Singles
	4, `Low Profile Screws M5 - 15mm <https://openbuildspartstore.com/low-profile-screws-m5-10-pack/>`_,SKU 922 - Sold in Packs - Need 4 Singles
	1, `V-Slot Gantry Plate (20mm) <http://openbuildspartstore.com/v-slot-gantry-plates/>`_,SKU 935
	1, `3GT (GT2-3M) Timing Belt - By the Foot <https://openbuildspartstore.com/3gt-gt2-3m-timing-belt-by-the-foot/>`_,11 foot for 1500mm rail
	1, `V-Slot® Linear Rail - 20x40 <http://openbuildspartstore.com/v-slot-linear-rail/>`_, SKU:285-LP - 1500mm
	4, `Nylon Insert Hex Locknut - M5 <https://openbuildspartstore.com/nylon-insert-hex-locknut-M5/>`_,SKU 10
	4, `Low Profile Screws M5 - 25mm <http://openbuildspartstore.com/low-profile-screws-m5/>`_,SKU 20 - Sold in Packs - Need 4 Singles
	1, `Allen Wrench - 1.5mm <https://openbuildspartstore.com/allen-wrench/>`_,SKU 171
	1, `Allen Wrench - 2.5mm <https://openbuildspartstore.com/allen-wrench/>`_,SKU 179
	1, `Allen Wrench - 2mm <https://openbuildspartstore.com/allen-wrench/>`_,SKU 190
	1, `Allen Wrench - 3mm <https://openbuildspartstore.com/allen-wrench/>`_,SKU 205
	1, `NEMA 23 Stepper Motor <https://openbuildspartstore.com/nema-23-stepper-motor/>`_,SKU 518 - Option to Include With Bundle


    When I originally ordered this kit, the longest rail listed was 1500mm,
slightly under five feet. The actual sliding platform can only cover about six
inches less than this due to the mounding hardware for the motor and belt. I
discovered that a 200mm linear rail and suitable timing belt is available, but
I elected to use this setup for my initial testing. 

We now have the ability to stretch a test motor, but we have more work to do.
We need to wind the motor!
