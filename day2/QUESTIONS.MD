1. Who controls the ledger canister
r7inp-6aaaa-aaaaa-aaabq-cai

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?
pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
16 nodes

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
10 ICPs * 1,5 (dissolve delay * 0,125 +1) * 1.25 (2 years old) = 18.75

4. What is wrong with the following code?
Base module Nat hasn't been declared

5. What is wrong with the following code? ...
We declare mutable array - thus need to add var before listing elements
Async calls are forbidden for mutable arrays, thus remove var in return type and use Array.freeze to return the array as immutable (need to import Array base library too)

6. What is wrong with the following code? ...
Import Array base library. 

