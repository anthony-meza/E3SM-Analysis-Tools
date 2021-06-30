

#single_precision_mpas.patch: The paths in this file assume you are in the E3SM root directory.
patch single_precision_mpas.patch
cp single_precision_bgc.patch ./components/mpas-ocean/src/BGC/single_precision_bgc.patch
cp single_precision_cvmix.patch ./components/mpas-ocean/src/cvmix/single_precision_cvmix.patch
cp single_precision_gotm.patch ./components/mpas-ocean/src/gotm/single_precision_gotm.patch

#single_precision_bgc.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/BGC
cd ./components/mpas-ocean/src/BGC
git apply single_precision_bgc.patch
#single_precision_cvmix.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/cvmix
cd ../cvmix
git apply single_precision_cvmix.patch

#single_precision_gotm.patch: The paths in this file assume you are in E3SM/components/mpas-ocean/src/gotm
cd ../gotm 
git apply single_precision_gotm.patch
