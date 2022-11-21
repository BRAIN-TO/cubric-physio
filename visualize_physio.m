% Script visualize_physio
% Use PhysIO to create contrasts and display them for fMRI data w/o task
% modeling
%
%  visualize_physio
%
%
%   See also

% Author:   Lars Kasper
% Created:  2022-11-20
% Copyright (C) 2022


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Visualize Movie of fMRI data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
doVisualizeFmri4D = false;

if doVisualizeFmri4D
    spm_check_registration('nifti/fmri.nii')

    % compute time series minus mean (bit of a hack...)
    % {1} means specify 4D data as matrix X (instead of i1, i2 etc.)
    %     spm_imcalc('nifti/fmri.nii', 'nifti/dfmri.nii', ...
    %         'bsxfun(@minus, X, mean(X))', {1})
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Create contrasts for smoothed or unsmoothed GLM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if hasStruct
    fileStructural = 'nifti/mstruct.nii';
else
    fileStructural = 'nifti/mmeanfmri.nii';
end

if doSmooth
    fileSpm = 'glm_s3/SPM.mat';
else
    fileSpm = 'glm/SPM.mat';
end

args = tapas_physio_report_contrasts(...
    'fileReport', 'physio_out/physio.ps', ...
    'fileSpm', fileSpm, ...
    'filePhysIO', 'physio_out/physio.mat', ...
    'fileStructural', fileStructural)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Compute tSNR gains from model (takes some time to compute residuals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


doComputeTsnrGains = false;

if doComputeTsnrGains
    indexContrastForSnrRatio = 0; % 0 = vs no noise modelin, 7 = vs motion

    namesPhysContrasts  = {'Cardiac', 'RespiratoryVolumePerTime'};
    tapas_physio_compute_tsnr_gains('physio_out/physio.mat', fileSpm, ...
        indexContrastForSnrRatio, ...
        namesPhysContrasts);
end