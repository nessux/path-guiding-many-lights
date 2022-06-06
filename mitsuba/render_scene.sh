scene_dir=scenes
scene=city
integrator=guided_path
budgetType=seconds
budget=3600
echo
echo
echo Render $scene with $integrator with $budget $budgetType
echo
echo Starting at $(date)
time ./dist/mitsuba -z ${scene_dir}/${scene}/${scene}.xml -o ${scene_dir}/${scene}/${integrator}_${budget}_${budgetType}.exr -D budgetType=${budgetType} -D budget=${budget} -r 1800

echo 
echo
echo Finished $scene with $integrator and $budget $budgetType at $(date)
echo
echo

