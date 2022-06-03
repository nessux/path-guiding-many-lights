scene_dir=scenes
scene=spaceship
integrator=path
spp=256
echo
echo
echo Render reference for $scene with $integrator with $spp spp
echo
echo Starting at $(date)
time ./dist/mitsuba -z ${scene_dir}/${scene}/${scene}.xml -o ${scene_dir}/${scene}/${scene}_mitsuba_${integrator}_${spp}spp.pfm -D sampleCount=${spp} -r 1800

echo 
echo
echo Finished $scene with $integrator and $spp spp at $(date)
echo
echo

