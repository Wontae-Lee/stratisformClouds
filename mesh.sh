# setting 0 folder
rm -r 0
cp -r 0.orig 0

# meshing
blockMesh
surfaceFeatures
decomposePar
mpirun -np 8 snappyHexMesh -parallel -overwrite | tee log.shm
reconstructParMesh -constant

# clean null mesh
createPatch -overwrite

# renumber the mesh
renumberMesh -overwrite

#------------------------------------------------------------------------------
