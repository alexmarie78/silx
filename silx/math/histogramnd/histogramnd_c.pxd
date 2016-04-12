# coding: utf-8
# /*##########################################################################
# Copyright (C) 2016 European Synchrotron Radiation Facility
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# ############################################################################*/

__authors__ = ["D. Naudet"]
__license__ = "MIT"
__date__ = "01/02/2016"

cimport numpy

cdef extern from "include/histogramnd_c.h":

    ctypedef enum histo_opt_type:
        HISTO_NONE
        HISTO_WEIGHT_MIN
        HISTO_WEIGHT_MAX
        HISTO_LAST_BIN_CLOSED

    ctypedef enum histo_rc_t:
        HISTO_OK
        HISTO_ERR_ALLOC

    # =====================
    # double sample, double cumul
    # =====================

    int histogramnd_double_double_double(double *i_sample,
                                         double *i_weigths,
                                         int i_n_dim,
                                         int i_n_elem,
                                         double *i_bin_ranges,
                                         int *i_n_bin,
                                         numpy.uint32_t *o_histo,
                                         double *o_cumul,
                                         int i_opt_flags,
                                         double i_weight_min,
                                         double i_weight_max) nogil

    int histogramnd_double_float_double(double *i_sample,
                                        float *i_weigths,
                                        int i_n_dim,
                                        int i_n_elem,
                                        double *i_bin_ranges,
                                        int *i_n_bin,
                                        numpy.uint32_t *o_histo,
                                        double *o_cumul,
                                        int i_opt_flags,
                                        float i_weight_min,
                                        float i_weight_max) nogil

    int histogramnd_double_int32_t_double(double *i_sample,
                                          numpy.int32_t *i_weigths,
                                          int i_n_dim,
                                          int i_n_elem,
                                          double *i_bin_ranges,
                                          int *i_n_bin,
                                          numpy.uint32_t *o_histo,
                                          double *o_cumul,
                                          int i_opt_flags,
                                          numpy.int32_t i_weight_min,
                                          numpy.int32_t i_weight_max) nogil

    # =====================
    # float sample, double cumul
    # =====================

    int histogramnd_float_double_double(float *i_sample,
                                        double *i_weigths,
                                        int i_n_dim,
                                        int i_n_elem,
                                        float *i_bin_ranges,
                                        int *i_n_bin,
                                        numpy.uint32_t *o_histo,
                                        double *o_cumul,
                                        int i_opt_flags,
                                        double i_weight_min,
                                        double i_weight_max) nogil

    int histogramnd_float_float_double(float *i_sample,
                                       float *i_weigths,
                                       int i_n_dim,
                                       int i_n_elem,
                                       float *i_bin_ranges,
                                       int *i_n_bin,
                                       numpy.uint32_t *o_histo,
                                       double *o_cumul,
                                       int i_opt_flags,
                                       float i_weight_min,
                                       float i_weight_max) nogil

    int histogramnd_float_int32_t_double(float *i_sample,
                                         numpy.int32_t *i_weigths,
                                         int i_n_dim,
                                         int i_n_elem,
                                         float *i_bin_ranges,
                                         int *i_n_bin,
                                         numpy.uint32_t *o_histo,
                                         double *o_cumul,
                                         int i_opt_flags,
                                         numpy.int32_t i_weight_min,
                                         numpy.int32_t i_weight_max) nogil

    # =====================
    # numpy.int32_t sample, double cumul
    # =====================

    int histogramnd_int32_t_double_double(numpy.int32_t *i_sample,
                                          double *i_weigths,
                                          int i_n_dim,
                                          int i_n_elem,
                                          numpy.int32_t *i_bin_ranges,
                                          int *i_n_bin,
                                          numpy.uint32_t *o_histo,
                                          double *o_cumul,
                                          int i_opt_flags,
                                          double i_weight_min,
                                          double i_weight_max) nogil

    int histogramnd_int32_t_float_double(numpy.int32_t *i_sample,
                                         float *i_weigths,
                                         int i_n_dim,
                                         int i_n_elem,
                                         numpy.int32_t *i_bin_ranges,
                                         int *i_n_bin,
                                         numpy.uint32_t *o_histo,
                                         double *o_cumul,
                                         int i_opt_flags,
                                         float i_weight_min,
                                         float i_weight_max) nogil

    int histogramnd_int32_t_int32_t_double(numpy.int32_t *i_sample,
                                           numpy.int32_t *i_weigths,
                                           int i_n_dim,
                                           int i_n_elem,
                                           numpy.int32_t *i_bin_ranges,
                                           int *i_n_bin,
                                           numpy.uint32_t *o_histo,
                                           double *o_cumul,
                                           int i_opt_flags,
                                           numpy.int32_t i_weight_min,
                                           numpy.int32_t i_weight_max) nogil

    # =====================
    # double sample, float cumul
    # =====================

    int histogramnd_double_double_float(double *i_sample,
                                        double *i_weigths,
                                        int i_n_dim,
                                        int i_n_elem,
                                        double *i_bin_ranges,
                                        int *i_n_bin,
                                        numpy.uint32_t *o_histo,
                                        float *o_cumul,
                                        int i_opt_flags,
                                        double i_weight_min,
                                        double i_weight_max) nogil

    int histogramnd_double_float_float(double *i_sample,
                                       float *i_weigths,
                                       int i_n_dim,
                                       int i_n_elem,
                                       double *i_bin_ranges,
                                       int *i_n_bin,
                                       numpy.uint32_t *o_histo,
                                       float *o_cumul,
                                       int i_opt_flags,
                                       float i_weight_min,
                                       float i_weight_max) nogil

    int histogramnd_double_int32_t_float(double *i_sample,
                                         numpy.int32_t *i_weigths,
                                         int i_n_dim,
                                         int i_n_elem,
                                         double *i_bin_ranges,
                                         int *i_n_bin,
                                         numpy.uint32_t *o_histo,
                                         float *o_cumul,
                                         int i_opt_flags,
                                         numpy.int32_t i_weight_min,
                                         numpy.int32_t i_weight_max) nogil

    # =====================
    # float sample, float cumul
    # =====================

    int histogramnd_float_double_float(float *i_sample,
                                       double *i_weigths,
                                       int i_n_dim,
                                       int i_n_elem,
                                       float *i_bin_ranges,
                                       int *i_n_bin,
                                       numpy.uint32_t *o_histo,
                                       float *o_cumul,
                                       int i_opt_flags,
                                       double i_weight_min,
                                       double i_weight_max) nogil

    int histogramnd_float_float_float(float *i_sample,
                                      float *i_weigths,
                                      int i_n_dim,
                                      int i_n_elem,
                                      float *i_bin_ranges,
                                      int *i_n_bin,
                                      numpy.uint32_t *o_histo,
                                      float *o_cumul,
                                      int i_opt_flags,
                                      float i_weight_min,
                                      float i_weight_max) nogil

    int histogramnd_float_int32_t_float(float *i_sample,
                                        numpy.int32_t *i_weigths,
                                        int i_n_dim,
                                        int i_n_elem,
                                        float *i_bin_ranges,
                                        int *i_n_bin,
                                        numpy.uint32_t *o_histo,
                                        float *o_cumul,
                                        int i_opt_flags,
                                        numpy.int32_t i_weight_min,
                                        numpy.int32_t i_weight_max) nogil

    # =====================
    # numpy.int32_t sample, float cumul
    # =====================

    int histogramnd_int32_t_double_float(numpy.int32_t *i_sample,
                                         double *i_weigths,
                                         int i_n_dim,
                                         int i_n_elem,
                                         numpy.int32_t *i_bin_ranges,
                                         int *i_n_bin,
                                         numpy.uint32_t *o_histo,
                                         float *o_cumul,
                                         int i_opt_flags,
                                         double i_weight_min,
                                         double i_weight_max) nogil

    int histogramnd_int32_t_float_float(numpy.int32_t *i_sample,
                                        float *i_weigths,
                                        int i_n_dim,
                                        int i_n_elem,
                                        numpy.int32_t *i_bin_ranges,
                                        int *i_n_bin,
                                        numpy.uint32_t *o_histo,
                                        float *o_cumul,
                                        int i_opt_flags,
                                        float i_weight_min,
                                        float i_weight_max) nogil

    int histogramnd_int32_t_int32_t_float(numpy.int32_t *i_sample,
                                          numpy.int32_t *i_weigths,
                                          int i_n_dim,
                                          int i_n_elem,
                                          numpy.int32_t *i_bin_ranges,
                                          int *i_n_bin,
                                          numpy.uint32_t *o_histo,
                                          float *o_cumul,
                                          int i_opt_flags,
                                          numpy.int32_t i_weight_min,
                                          numpy.int32_t i_weight_max) nogil