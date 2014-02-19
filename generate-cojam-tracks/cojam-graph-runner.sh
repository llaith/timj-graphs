#!/bin/sh
julia cojam-tracks-graph.jl $1
EDGES=`grep '</edge>' cojam-tracks-$1.graphml | wc -l`
VERTICES=`grep '<node ' cojam-tracks-$1.graphml | wc -l`
echo Generated graph with $VERTICES vertices and $EDGES edges.
julia ../strip-non-connected-vertices.jl cojam-tracks-$1.graphml
EDGES=`grep '</edge>' cojam-tracks-$1.graphml | wc -l`
VERTICES=`grep '<node ' cojam-tracks-$1.graphml | wc -l`
echo Generated graph with $VERTICES vertices and $EDGES edges.
