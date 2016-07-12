echo "in $0"
#Author = XXOS_Developer
OUT_DIR=/home/xxos_developer/source_code/flyme5/devices/hm2/out/merged_target_files
#FLYME_DIR=$OUT_DIR/DATA/media/flyme
DEV_DIR=/home/xxos_developer/source_code/flyme5/devices/hm2

cd $OUT_DIR
echo "Delete $OUT_DIR/DATA"
rm -rf DATA/
echo "create dir DATA/"
mkdir -vp DATA/

echo "move other into data"
mv -vf $OUT_DIR/SYSTEM/fonts/ $OUT_DIR/DATA/system-fonts

