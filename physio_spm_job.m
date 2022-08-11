%-----------------------------------------------------------------------
% Job saved on 11-Aug-2022 00:45:02 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.tools.physio.save_dir = {'physio_out'};
matlabbatch{1}.spm.tools.physio.log_files.vendor = 'Philips';
matlabbatch{1}.spm.tools.physio.log_files.cardiac = {'SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.respiration = {'SCANPHYSLOG.log'};
matlabbatch{1}.spm.tools.physio.log_files.scan_timing = {''};
matlabbatch{1}.spm.tools.physio.log_files.sampling_interval = [];
matlabbatch{1}.spm.tools.physio.log_files.relative_start_acquisition = 0;
matlabbatch{1}.spm.tools.physio.log_files.align_scan = 'last';
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.Nslices = 31;
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.NslicesPerBeat = [];
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.TR = 2;
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.Ndummies = 4;
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.Nscans = 210;
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.onset_slice = 1;
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.time_slice_to_slice = [];
matlabbatch{1}.spm.tools.physio.scan_timing.sqpar.Nprep = [];
matlabbatch{1}.spm.tools.physio.scan_timing.sync.gradient_log.grad_direction = 'z';
matlabbatch{1}.spm.tools.physio.scan_timing.sync.gradient_log.zero = 1900;
matlabbatch{1}.spm.tools.physio.scan_timing.sync.gradient_log.slice = 2000;
matlabbatch{1}.spm.tools.physio.scan_timing.sync.gradient_log.vol = [];
matlabbatch{1}.spm.tools.physio.scan_timing.sync.gradient_log.vol_spacing = 0.1;
matlabbatch{1}.spm.tools.physio.preproc.cardiac.modality = 'ECG_WiFi';
matlabbatch{1}.spm.tools.physio.preproc.cardiac.filter.no = struct([]);
matlabbatch{1}.spm.tools.physio.preproc.cardiac.initial_cpulse_select.auto_matched.min = 0.4;
matlabbatch{1}.spm.tools.physio.preproc.cardiac.initial_cpulse_select.auto_matched.file = 'initial_cpulse_kRpeakfile.mat';
matlabbatch{1}.spm.tools.physio.preproc.cardiac.initial_cpulse_select.auto_matched.max_heart_rate_bpm = 90;
matlabbatch{1}.spm.tools.physio.preproc.cardiac.posthoc_cpulse_select.off = struct([]);
matlabbatch{1}.spm.tools.physio.preproc.respiratory.filter.passband = [0.01 2];
matlabbatch{1}.spm.tools.physio.preproc.respiratory.despike = false;
matlabbatch{1}.spm.tools.physio.model.output_multiple_regressors = 'multiple_regressors.txt';
matlabbatch{1}.spm.tools.physio.model.output_physio = 'physio.mat';
matlabbatch{1}.spm.tools.physio.model.orthogonalise = 'none';
matlabbatch{1}.spm.tools.physio.model.censor_unreliable_recording_intervals = false;
matlabbatch{1}.spm.tools.physio.model.retroicor.yes.order.c = 3;
matlabbatch{1}.spm.tools.physio.model.retroicor.yes.order.r = 4;
matlabbatch{1}.spm.tools.physio.model.retroicor.yes.order.cr = 1;
matlabbatch{1}.spm.tools.physio.model.rvt.yes.method = 'hilbert';
matlabbatch{1}.spm.tools.physio.model.rvt.yes.delays = 0;
matlabbatch{1}.spm.tools.physio.model.hrv.yes.delays = 0;
matlabbatch{1}.spm.tools.physio.model.noise_rois.no = struct([]);
matlabbatch{1}.spm.tools.physio.model.movement.yes.file_realignment_parameters = {'nifti/rp_fmri.txt'};
matlabbatch{1}.spm.tools.physio.model.movement.yes.order = 6;
matlabbatch{1}.spm.tools.physio.model.movement.yes.censoring_method = 'FD';
matlabbatch{1}.spm.tools.physio.model.movement.yes.censoring_threshold = 1;
matlabbatch{1}.spm.tools.physio.model.other.no = struct([]);
matlabbatch{1}.spm.tools.physio.verbose.level = 2;
matlabbatch{1}.spm.tools.physio.verbose.fig_output_file = 'physio.jpg';
matlabbatch{1}.spm.tools.physio.verbose.use_tabs = false;
