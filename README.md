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

Three files, i.e. BASIS_MOLOPT, GTH_POTENTIALS and vdW_kernel_table.dat, can be found in the data directory of cp2k installation directory.

* `env`:
Environments and version information for running cp2k, DeePMD-kit and LAMMPS.

**DeePMD-kit**
https://github.com/deepmodeling/deepmd-kit/releases/tag/v2.0.1
The released installation file deepmd-kit-2.0.1-cuda11.3_gpu-Linux-x86_64.sh is used.

**cp2k**
https://www.cp2k.org/
cp2k-9.1 is used. The needed environment is written in the file cp2k.setup.

**LAMMPS**
https://www.lammps.org/
The DeePMD-kit has compiled and supplied a executable LAMMPS inside, which is used.

* `mlff_deepmd`:
The training scripts of DeePMD-kit.
The MLFF model of DeePMD-kit.
The DFT data for training and the predictions by the MLFF model.
An example of cp2k job to calculate the energy and force for a given atomic configuration.

* `npt_lammps`:
Inputs and examples of NPT MD by MLFF and LAMMPS in DeePMD-kit.

* `ti_lammps`:
Inputs and examples of TI MD for the free energy calculation by MLFF and LAMMPS in DeePMD-kit.

* `xyz_2D_ices`:
Atomic configurations of the main 2D ices in this work.





