

decomposePar -force
mpirun -np 8   buoyantPimpleFoam > log.buoyantPimpleFoam -parallel
# mpirun -np 8  buoyantPimpleFoam  > /dev/null -parallel
reconstructPar

#------------------------------------------------------------------------------
