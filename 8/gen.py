#!/usr/bin/env python
from itertools import permutations

num_channels = 11
hops = 3
graph = {
  "a": ["b", "d"],
  "b": ["c", "d"],
  "c": [],
  "d": ["e", "f"],
  "e": ["g", "h", "i"],
  "f": ["i", "j"],
  "g": ["h", "k"],
  "h": ["i", "k"],
  "i": ["j", "l"],
  "j": ["l", "n"],
  "k": ["l", "m"],
  "l": ["n", "p"],
  "m": ["l", "o", "p"],
  "n": ["q"],
  "o": ["p"],
  "p": ["n", "q"],
  "q": [],
}

#########################
### Declare constants ###
#########################
for x in graph:
  print("(declare-const chan_%s Int)" % x)
for (x, y) in permutations(graph, 2):
  for i in range(1, hops + 1):
    print("(declare-const hop_%d_%s_%s Bool)" % (i, x, y))

##########################
### Begin requirements ###
##########################
print("(assert")
print("(and")

####################################
### 1-hop neighbors (from graph) ###
####################################
for (x, y) in permutations(graph, 2):
  if x in graph[y] or y in graph[x]:
    print("hop_1_%s_%s" % (x, y))
  else:
    print("(not hop_1_%s_%s)" % (x, y))

##################################################
### i-hop neighbors (from (i-1)-hop neighbors) ###
##################################################
for i in range(1, hops):
  for (x, y) in permutations(graph, 2):
    print("(=> hop_%d_%s_%s hop_%d_%s_%s)" % (i, x, y, i + 1, x, y))
  for (x, y, z) in permutations(graph, 3):
    print("(=> (and hop_%d_%s_%s hop_1_%s_%s) hop_%d_%s_%s)" % (i, x, y, y, z, i + 1, x, z))

####################################################
### Distinct channels in (hops)-hop neighborhood ###
####################################################
for (x, y) in permutations(graph, 2):
  print("(=> hop_%d_%s_%s (not (= chan_%s chan_%s)))" % (hops, x, y, x, y))

##############################################
### Existing channels: 0..(num_channels-1) ###
##############################################
for x in graph:
  print("(>= chan_%s 0)" % x)
  print("(<= chan_%s %d)" % (x, num_channels - 1))

########################
### End requirements ###
########################
print("))")
print("(check-sat)")
print("(get-model)")
