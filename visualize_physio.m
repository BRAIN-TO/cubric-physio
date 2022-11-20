% Script visualize_physio
% Use PhysIO to create contrasts and display them for resting state fMRI
%
%  visualize_physio
%
%
%   See also
 
% Author:   Lars Kasper
% Created:  2022-08-11
% Copyright (C) 2022 
 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Create contrasts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% unsmoothed

if hasStruct
    fileStructural = 'nifti/mstruct.nii'
else
    'nifti/mmeanfmri.nii'
end

args = tapas_physio_report_contrasts(...
    'fileReport', 'physio_out/physio.ps', ...
    'fileSpm', 'glm/SPM.mat', ...
    'filePhysIO', 'physio_out/physio.mat', ...
    'fileStructural', fileStructural, ...
    'reportContrastCorrection', 'FWE')

%% smoothed glm
% args = tapas_physio_report_contrasts(...
%     'fileReport', 'physio_out/physio.ps', ...
%     'fileSpm', 'glm_s3/SPM.mat', ...
%     'filePhysIO', 'physio_out/physio.mat', ...
%     'fileStructural', fileStructural)