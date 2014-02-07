#!/bin/sh
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" > cojam-artists-$1.graphml
echo "<graphml xmlns=\"http://graphml.graphdrawing.org/xmlns\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://graphml.graphdrawing.org/xmlns http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd\">" >> cojam-artists-$1.graphml
echo "<graph id=\"G\" edgedefault=\"undirected\">" >> cojam-artists-$1.graphml
echo "  <key id=\"cojams_num\" for=\"edge\" attr.name=\"cojams_num\" attr.type=\"int\"/>" >> cojam-artists-$1.graphml
echo "  <key id=\"cojams\" for=\"edge\" attr.name=\"cojams\" attr.type=\"string\"/>" >> cojam-artists-$1.graphml
julia cojam-graph3-vertices.jl $1
julia cojam-graph3-edges.jl $1 0 80000
julia cojam-graph3-edges.jl $1 80000   160000
julia cojam-graph3-edges.jl $1 160000  240000
julia cojam-graph3-edges.jl $1 240000  320000
julia cojam-graph3-edges.jl $1 320000  400000
julia cojam-graph3-edges.jl $1 400000  480000
julia cojam-graph3-edges.jl $1 480000  560000
julia cojam-graph3-edges.jl $1 560000  640000
julia cojam-graph3-edges.jl $1 640000  720000
julia cojam-graph3-edges.jl $1 720000  800000
julia cojam-graph3-edges.jl $1 800000  880000
julia cojam-graph3-edges.jl $1 880000  960000
julia cojam-graph3-edges.jl $1 960000  1040000
julia cojam-graph3-edges.jl $1 1040000 1120000
julia cojam-graph3-edges.jl $1 1120000 1200000
julia cojam-graph3-edges.jl $1 1200000 1280000
julia cojam-graph3-edges.jl $1 1280000 1360000
julia cojam-graph3-edges.jl $1 1360000 1440000
julia cojam-graph3-edges.jl $1 1440000 1480000
julia cojam-graph3-edges.jl $1 1480000 1500000
julia cojam-graph3-edges.jl $1 1500000 1520000
julia cojam-graph3-edges.jl $1 1520000 1530000
julia cojam-graph3-edges.jl $1 1530000 1540000
julia cojam-graph3-edges.jl $1 1540000 1550000
julia cojam-graph3-edges.jl $1 1550000 1555000
julia cojam-graph3-edges.jl $1 1555000 1560000
julia cojam-graph3-edges.jl $1 1560000 1565000
julia cojam-graph3-edges.jl $1 1565000 1570000
julia cojam-graph3-edges.jl $1 1570000 1571000
julia cojam-graph3-edges.jl $1 1571000 1572000
julia cojam-graph3-edges.jl $1 1572000 1573000
julia cojam-graph3-edges.jl $1 1573000 1574000
julia cojam-graph3-edges.jl $1 1574000 1575000
echo "</graph>" >> cojam-artists-$1.graphml
echo "</graphml>" >> cojam-artists-$1.graphml
