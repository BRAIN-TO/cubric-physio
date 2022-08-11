% Script visualize_physio
% Use PhysIO to create contrasts and display them for resting state fMRI
%
%  visualize_physio
%
%
%   See also
 
% Author:   Lars Kasper
% Created:  2022-08-11
% Copyright (C) 2022 Institute for Biomedical Engineering
%                    University of Zurich and ETH Zurich
%
% This file is part of the TAPAS PhysIO Toolbox, which is released under
% the terms of the GNU General Public License (GPL), version 3. You can
% redistribute it and/or modify it under the terms of the GPL (either
% version 3 or, at your option, any later version). For further details,
% see the file COPYING or <http://www.gnu.org/licenses/>.
 
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Create contrasts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% unsmoothed
args = tapas_physio_report_contrasts(...
    'fileReport', 'physio_out/physio.ps', ...
    'fileSpm', 'glm/SPM.mat', ...
    'filePhysIO', 'physio_out/physio.mat', ...
    'fileStructural', 'nifti/mstruct.nii', ...
    'reportContrastCorrection', 'FWE')

%% smoothed glm
% args = tapas_physio_report_contrasts(...
%     'fileReport', 'physio_out/physio.ps', ...
%     'fileSpm', 'glm_s3/SPM.mat', ...
%     'filePhysIO', 'physio_out/physio.mat', ...
%     'fileStructural', 'nifti/mstruct.nii')