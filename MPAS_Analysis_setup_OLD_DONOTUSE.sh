
if [ ! -d "~/repos/MPAS-Analysis" ]
then
        git clone git@github.com:MPAS-Dev/MPAS-Analysis.git
        
        cd MPAS-Analysis
        
        source /global/homes/a/ameza9/miconda3/etc/profile.d/conda.sh
        conda config --add channels conda-forge
        conda config --set channel_priority strict
        conda create -n mpas-analysis python=3.8 numpy scipy "matplotlib>=3.0.2" \
        netCDF4 "xarray>=0.14.1" dask bottleneck lxml "nco>=4.8.1" pyproj \
        pillow cmocean progressbar2 requests setuptools shapely "cartopy>=0.18.0" \
        cartopy_offlinedata "geometric_features>=0.1.13" gsw "pyremap<0.1.0" \
        "mpas_tools>=0.0.15" pandas python-dateutil six
        conda activate mpas-analysis
fi
#Then install the conda enviornment 
#if ~/repos/MPAS-Analysis/mpas_analysis/diagnostics
#DNE, make a dir with this name 
#cd ~/repos/MPAS-Analysis/mpas_analysis/
#mkdir diagnostics 
#cd ~/repos/MPAS-Analysis/mpas_analysis/diagnostics 
#mkdir mpas_analysis
#mkdir observations 
if [ ! -d "~/repos/MPAS-Analysis/mpas_analysis/diagnostics" ]
#DNE, make a dir with this name 
then    
        cd ~/repos/MPAS-Analysis/mpas_analysis/
        mkdir diagnostics
        cd ~/repos/MPAS-Analysis/mpas_analysis/diagnostics
        mkdir mpas_analysis
        mkdir observations
fi

./download_analysis_data.py -o ~/repos/MPAS-Analysis/mpas_analysis/diagnostics  
