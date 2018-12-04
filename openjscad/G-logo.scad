// This is a 3d model of the "G" logo. It also serves as an example
// note that vectors are in mm

// left vertical beam
color ("brown") zBeam metric 25 200;
translate ([0, 0, 0)]

// right vertical beam
color ("brown") zBeam metric 25 100;
translate ([1025, 0, 0)]

// top horizontal beam
color ("brown") xBeam metric 25 100;
translate ([0, 0, 2025)]

// middle horizontal beam
color ("brown") xBeam metric 25 100;
translate ([0, 0, 1025)]

// bottom horizontal beam
color ("brown") xBeam metric 25 100;
translate ([0, 0, 25)]
