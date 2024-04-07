#!/usr/bin/env python3

#https://youtu.be/h5n6L09VsLs?t=693

import random

class Tensor:
    def __init__(self, size=1, data=None, tree=[]):
        self.size = size
        self.tree = tree
        if data:
            assert(size == len(data))
            self.data = data
        else:
            self.data = [random.uniform(-1, 1) for _ in range(size)]
    def __repr__(self):
        return f"<Tensor (Size = {self.size}) (Data = {self.data})"
    def __add__(self, tensor):
        assert(self.size == tensor.size)
        return Tensor(
            self.size,
            data = [x + y for (x, y) in zip(self.data, tensor.data)],
            tree = ["+", self, tensor]
        )

    def __mul__(self, tensor):
        assert(self.size == tensor.size)
        return Tensor(
            self.size,
            data = [x * y for (x, y) in zip(self.data, tensor.data)],
            tree = ["*", self, tensor]
        )

a = Tensor(3, data=[1, 2, 3])
b = Tensor(3, data=[5, 6, 7])
c = Tensor(3, data=[3, 4, 2])

print((a + b * c).tree)
