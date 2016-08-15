#!/bin/bash

#gfortran DSSV_gluon_update.f -o dssv

f2py -c -m elprod d1tq.f only: subd1tq :
