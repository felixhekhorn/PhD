#!/bin/bash

#gfortran DSSV_gluon_update.f -o dssv

f2py -c -m DSSV DSSV_gluon_update.f only: dssvgupdate dssvini :
