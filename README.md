# Supplementary data 

This repository contains supplementary data supporting results of the paper:

"Temperature-Pressure Phase Diagram of Confined Monolayer Water/Ice at the First-Principle Accuracy with a Machine-learning Force Field"

Bo Lin, Jian Jiang, Xiao Cheng Zeng, Lei Li

## License
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
       http://www.apache.org/licenses/LICENSE-2.0  
See the file `LICENSE` for details.

## Contents
* `aimd_cp2k`:
Inputs and examples for the ab initio molecular dynamics (AIMD) simulations with CP2K.  
This directory contains AIMD examples of main 2D ices in NVT ensembles with CP2K.  
BASIS_MOLOPT, GTH_POTENTIALS and vdW_kernel_table.dat can be found in the 'data' directory of the CP2K source code.

* `env`:
Environments and version information for CP2K, DeePMD-kit and LAMMPS.  
**DeePMD-kit**:
https://github.com/deepmodeling/deepmd-kit/releases/tag/v2.0.1  
The released file 'deepmd-kit-2.0.1-cuda11.3_gpu-Linux-x86_64.sh' was used for installation  
**cp2k**:
https://www.cp2k.org/  
cp2k-9.1 is used. The environment settings can be found in the file 'cp2k.setup'.  
**LAMMPS**:
https://www.lammps.org/  
The executable LAMMPS pre-compiled in the DeePMD-kit was used.  
**i-PI**:
http://ipi-code.org/  
i-PI-v2.4.0 is used.  

* `aimd_cp2k`:
Examples of AIMD simulations used to confirm the MLFF-MD results

* `mlff_deepmd`:  
ref_data_collection: scripts used to collect training data. Training and testing data are not included yet due to difficulty on uploading large files. Please email author if needed.  
deepmd_settings: DeePMD setting files used to train the MLFF model for the 2D water.  
deepmd_model: the developed MLFF model of the 2D water.  

* `npt_lammps`:
Examples of MD simulations with the NPT ensemble using the LAMMPS in DeePMD-kit based on the MLFF model.

* `ti_lammps`:
Examples of free-energy calculations with the thermodynamics integration method using the LAMMPS in DeePMD-kit based on the MLFF model.

* `pimd`:
Examples of PIMD (path-integral MD) using the open-source i-PI code and the LAMMPS in DeePMD-kit based on the MLFF model.




