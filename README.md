# cubric-physio

Physiological Noise Correction using the PhysIO Toolbox - Examples for CUBRIC, Cardiff 

## Purpose
This small repository sets up a simple preprocessing (realignment)

## Installation
1. You will need to install SPM12
2. You will need to install the PhysIO Toolbox
    - The `PhysIO/code` folder should end up in `spm12/toolbox/PhysIO`


## Getting Started
1. Open the main script `cubric_main` in Matlab
2. Follow the instructions there to adapt paths to your environment
3. For each subject to try, copy the fMRI and physiological recording data according to the following naming 
   conventions into a new folder `results/sub-XX` (XX is subject ID, e.g., 15)
    - `*3DT1*.nii                   -> results/sub-XX/nifti/struct.nii`
    - `*rFMRI*.nii                  -> results/sub-XX/nifti/fmri.nii`
        - Note that this only assesses the resting state run for now. You can number the runs `fmri1.nii`, `fmri2.nii` etc., 
          but you will have to adapt all job files `*_spm_job.m` in the code to reflect the right file names.
    - `LabChart*.txt   -> SCANPHYSLOG.log`
        - Note that you have to choose the log file where the `<TimeStamp>`  
          roughly matches (being a bit earlier, but < 1 min) the
          `AcquisitionTime` in the `.json` sidecar file of the corresponding `*rFMRI*.nii` file
4. Run `cubric_physio_main` (play button) in Matlab. For starters, the interactive mode (`isInteraxtive = true`) is recommended
