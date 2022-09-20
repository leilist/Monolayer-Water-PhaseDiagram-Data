# Supplementary data 

This repository contains supplementary data supporting results of the paper:

"Temperature-Pressure Phase Diagram of Confined Monolayer Water/Ice: Machine-learning Force Field at the First-Principle Accuracy"

Bo Lin, Jian Jiang, Xiao Cheng Zeng, Lei Li

## License
The content of this repository is licensed under the CC-BY-SA-4.0 license. See the file
`LICENSE` for details.

## Contents
* `aimd_cp2k`:
Inputs and examples for the ab initio molecular dynamics (AIMD) simulations by cp2k.

This directory contains AIMD examples of main 2D ices in NVT ensembles by cp2k.

BASIS_MOLOPT, GTH_POTENTIALS and vdW_kernel_table.dat can be found in the 'data' directory of the cp2k source code.

* `env`:
Environments and version information for cp2k, DeePMD-kit and LAMMPS.

**DeePMD-kit**
https://github.com/deepmodeling/deepmd-kit/releases/tag/v2.0.1
The released file deepmd-kit-2.0.1-cuda11.3_gpu-Linux-x86_64.sh is used for installation 

**cp2k**
https://www.cp2k.org/
cp2k-9.1 is used. The environment settings can be found in the file 'cp2k.setup'.

**LAMMPS**
https://www.lammps.org/
The executable LAMMPS pre-compiled in the DeePMD-kit is used.

* `aimd_cp2k`:
Examples of AIMD simulations used to confirm the MLFF-MD results

* `mlff_deepmd`:
ref_data_collection: scripts used to collect training data
train_test_data: reference data used to develop the MLFF model (MLFF energies are also included. See readme.txt for details) 
deepmd_settings: DeePMD setting files used to train the MLFF model of the 2D water.
deepmd_model: the developed MLFF model of the 2D water.

* `npt_lammps`:
Examples of MD simulations with the NPT ensemble using the LAMMPS in DeePMD-kit based on the MLFF model.

* `ti_lammps`:
Examples of free-energy calculations with the thermodynamics integration method using the LAMMPS in DeePMD-kit based on the MLFF model.

* `xyz_2D_ices`:
Atomic configurations of the main 2D ices reported in our work.





