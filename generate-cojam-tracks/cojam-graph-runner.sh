#!/bin/sh
julia cojam-graph-edges.jl $1
EDGES=`grep '</edge>' cojam-tracks-$1.graphml | wc -l`
VERTICES=`grep '<node ' cojam-tracks-$1.graphml | wc -l`
echo Generated graph with $VERTICES vertices and $EDGES edges.
