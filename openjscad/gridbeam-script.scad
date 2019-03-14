// This is a upgraded version of Tim's https://github.com/openscad/MCAD/blob/master/gridbeam.scad
// Unlike Tim's version (intented for openscad), we're focusing on using this with openjscad
// The https://github.com/jscad/openscad-openjscad-translator is used to convert parts of Tim's original script

Let's say instead we put something like this in the mcad/gridbeam script:

// A segment starts from 'the middle between 2 holes + the whole itself + the next middle between 2 holes' 
// Consequently, a segment equals the width of the beam (so one, one-and-a-half, or two inch with imperial gridbeam, or 25, 40 or 50 mm with metric grdbeam)

entered length / entered beam_width = number_of_segments

if gridbeam = imperial
than units width = inch
and units length = feet
and units beam_hole_diameter = inch

if gridbeam = imperial and width = 1
than beam_hole_diameter = 11/32

if gridbeam = imperial and width = 1,5
than beam_hole_diameter = 11/32

if gridbeam = imperial and width = 2
than beam_hole_diameter = 7/16

if gridbeam = imperial and width = not equal to 1 or 1,5 or 2
than give error = Please enter one of the standard imperial gridbeam
widths (1 or 1,5 or 2)

if gridbeam = imperial and length = not a multiple of 0,5
than give error = Please enter a multiple of 0,5 for length

if gridbeam = metric
than units width = millimeter
and units length = meter
and units beam_hole_diameter = millimeter

if gridbeam = metric and width = 25
than beam_hole_diameter = 7

if gridbeam = metric and width = 40
than beam_hole_diameter = 10

if gridbeam = metric and width = 50
than beam_hole_diameter = 13

if gridbeam = metric and width = not equal to 25 or 40 or 50
than give error = Please enter one of the standard metric gridbeam
widths (25 or 40 or 50)

if gridbeam = metric and length = not a multiple of either 0,2 or 0,5
than give error = Please enter a multiple of 0,2 or 0,5 for length

and in the model script in openscad we can then for example type
following command instead:

xBeam imperial 1 4,5
this would create a horizontal gridbeam with 1 inch width and 4,5 feet
length

When typing
xBeam metric 25 1,2
it would create a horizontal gridbeam with 25 mm width and 1,2 m length
