#!/bin/sh
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > cojam3.graphml
echo "<graphml xmlns=\"http://graphml.graphdrawing.org/xmlns\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd\">" >> cojam3.graphml
echo "<graph id=\"G\" edgedefault=\"undirected\">" >> cojam3.graphml
echo "  <key id=\"cojams_num\" for=\"edge\" attr.name=\"cojams_num\" attr.type=\"int\"/>" >> cojam3.graphml
echo "  <key id=\"cojams\" for=\"edge\" attr.name=\"cojams\" attr.type=\"string\"/>" >> cojam3.graphml
julia cojam-graph3-vertices.jl
julia cojam-graph3-edges.jl 0 80000
julia cojam-graph3-edges.jl 80000   160000
julia cojam-graph3-edges.jl 160000  240000
julia cojam-graph3-edges.jl 240000  320000
julia cojam-graph3-edges.jl 320000  400000
julia cojam-graph3-edges.jl 400000  480000
julia cojam-graph3-edges.jl 480000  560000
julia cojam-graph3-edges.jl 560000  640000
julia cojam-graph3-edges.jl 640000  720000
julia cojam-graph3-edges.jl 720000  800000
julia cojam-graph3-edges.jl 800000  880000
julia cojam-graph3-edges.jl 880000  960000
julia cojam-graph3-edges.jl 960000  1040000
julia cojam-graph3-edges.jl 1040000 1120000
julia cojam-graph3-edges.jl 1120000 1200000
julia cojam-graph3-edges.jl 1200000 1280000
julia cojam-graph3-edges.jl 1280000 1360000
julia cojam-graph3-edges.jl 1360000 1440000
julia cojam-graph3-edges.jl 1440000 1480000
julia cojam-graph3-edges.jl 1480000 1500000
julia cojam-graph3-edges.jl 1500000 1520000
julia cojam-graph3-edges.jl 1520000 1530000
julia cojam-graph3-edges.jl 1530000 1540000
julia cojam-graph3-edges.jl 1540000 1550000
julia cojam-graph3-edges.jl 1550000 1555000
julia cojam-graph3-edges.jl 1555000 1560000
julia cojam-graph3-edges.jl 1560000 1565000
julia cojam-graph3-edges.jl 1565000 1570000
julia cojam-graph3-edges.jl 1570000 1571000
julia cojam-graph3-edges.jl 1571000 1572000
julia cojam-graph3-edges.jl 1572000 1573000
julia cojam-graph3-edges.jl 1573000 1574000
julia cojam-graph3-edges.jl 1574000 1575000
echo "</graph>" >> cojam3.graphml
echo "</graphml>" >> cojam3.graphml
