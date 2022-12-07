import time
from libc.math cimport pow

cdef double square_and_add (double x):
    """Compute x^2 + x as double.

    This is a cdef function that can be called from within
    a Cython program, but not from Python.
    """
    return pow(x, 2.0) + x

cdef void test_speed():
    s: int = 0
    for i in range(100_000_000):
        s += i

cpdef print_result (double x):
    """This is a cpdef function that can be called from Python."""
    print("({} ^ 2) + {} = {}".format(x, x, square_and_add(x)))
    before = time.time()
    test_speed()
    print(f'test speed cython: {time.time()-before:.02f}s')