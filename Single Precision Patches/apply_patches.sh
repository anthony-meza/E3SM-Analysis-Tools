

#single_precision_mpas.patch: The paths in this file assume you are in the E3SM root directory.
patch single_precision_mpas.patch
#single_precision_bgc.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/BGC
cd /components/mpas-ocean/src/BGC
patch single_precision_bgc.patch
#single_precision_cvmix.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/cvmix
cd ../cvmix
patch single_precision_cvmix.patch

#single_precision_gotm.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/gotm
cd ../gotm 
patch single_precision_gotm.patch
