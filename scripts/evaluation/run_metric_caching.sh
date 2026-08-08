export NAVSIM_DEVKIT_ROOT=/home/yuan/storage/share/Projects/DiffusionDriveV2
export NAVSIM_EXP_ROOT=$NAVSIM_DEVKIT_ROOT/outputs
TRAIN_TEST_SPLIT=navtest
export CACHE_PATH=$NAVSIM_EXP_ROOT/metric_cache
export OPENSCENE_DATA_ROOT=/home/yuan/storage2/share/bigdata/navsim
export NUPLAN_MAPS_ROOT=/home/yuan/storage2/share/bigdata/navsim/maps

python $NAVSIM_DEVKIT_ROOT/navsim/planning/script/run_metric_caching.py \
train_test_split=$TRAIN_TEST_SPLIT \
cache.cache_path=$CACHE_PATH