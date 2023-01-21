1. True or False: we can prevent the heap being erased during upgrades by using a stable heap.
False. Stable indeed indicates that we use stable memory, not heap

2. A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?
Not sure how to read this syntax exactly, but i assume 2 rounds of consesus 1 sec each if there are in thy subnet, or 4 sec a round.

3. Is possible to realize an intercanister call in query mode?
No. await looks like a commiting a transaction that needs to be "registered".