export NAVSIM_DEVKIT_ROOT=/home/yuan/storage/share/Projects/DiffusionDriveV2
export NAVSIM_EXP_ROOT=$NAVSIM_DEVKIT_ROOT/outputs
export OPENSCENE_DATA_ROOT=/home/yuan/storage2/share/bigdata/navsim
export NUPLAN_MAPS_ROOT=/home/yuan/storage2/share/bigdata/navsim/maps
TRAIN_TEST_SPLIT=navtest
CHECKPOINT=$NAVSIM_DEVKIT_ROOT/ckpts/diffusiondrive_navsim_88p1_PDMS.pth

python $NAVSIM_DEVKIT_ROOT/navsim/planning/script/run_pdm_score.py \
train_test_split=$TRAIN_TEST_SPLIT \
agent=diffusiondrive_agent \
worker=single_machine_thread_pool \
agent.checkpoint_path=$CHECKPOINT \
experiment_name=diffusiondrive_agent_eval 
