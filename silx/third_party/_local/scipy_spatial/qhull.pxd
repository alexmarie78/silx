# -*-cython-*-
"""
Qhull shared definitions, for use by other Cython modules

"""
#
# Copyright (C)  Pauli Virtanen, 2010.
#
# Distributed under the same BSD license as Scipy.
#

cdef extern from "numpy/ndarrayobject.h":
    cdef enum:
        NPY_MAXDIMS

ctypedef struct DelaunayInfo_t:
    int ndim
    int npoints
    int nsimplex
    double *points
    int *simplices
    int *neighbors
    double *equations
    double *transform
    int *vertex_to_simplex
    double paraboloid_scale
    double paraboloid_shift
    double *max_bound
    double *min_bound
    int *vertex_neighbors_indices
    int *vertex_neighbors_indptr

cdef int _get_delaunay_info(DelaunayInfo_t *, obj,
                            int compute_transform,
                            int compute_vertex_to_simplex,
                            int compute_vertex_neighbors) except -1

#
# N+1-D geometry
#

cdef void _lift_point(DelaunayInfo_t *d, double *x, double *z) nogil

cdef double _distplane(DelaunayInfo_t *d, int isimplex, double *point) nogil
