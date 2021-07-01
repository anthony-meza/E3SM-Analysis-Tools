#if metis is not built on machine
# curl http://glaros.dtc.umn.edu/gkhome/fetch/sw/metis/metis-5.1.0.tar.gz --output ./metis-5.1.0.tar.gz
# gunzip metis-5.*
# tar -xvf metis-5*
# cd metis-5.1.0
# make config 
# make
# make install 
#how to symlink metis 
ln -sf /usr/bin/gpmetis metis 
#making symlinks 
#if double precision: 
RUN_DIR=/global/cscratch1/sd/ameza9/runs/
ln -sf $RUN_DIR/210623_QU240_test_single_precision/ocean/global_ocean/QU240/PHC/init/initial_state/namelist.ocean namelist.ocean
ln -sf $RUN_DIR210623_QU240_test_single_precision/ocean/global_ocean/QU240/PHC/init/initial_state/graph.info graph.info
