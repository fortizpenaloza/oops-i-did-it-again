initialization
hash

	^ player hash bitXor: (rank hash bitXor: score hash)