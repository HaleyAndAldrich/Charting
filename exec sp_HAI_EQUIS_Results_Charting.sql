use equis
go
declare @facility_id int = (select facility_id from dt_facility where facility_name like 'j.m. stuart%')

exec [HAI].[sp_HAI_EQUIS_Results_Charting]
	 @facility_id,
	 'jmss-landfill 9', --@subfacilities varchar(2000)
	 null, --@location_groups varchar (2000),
	 null, --'MW-12|MW-10|MW-11|MW-3B', --@locations varchar (2000),
	 'n', --@sample_type varchar (20),
	 '2017-07-wg-jmss', --'1999-Aug-GW|2000-Mar-GW', --@task_codes varchar (1000),
	 '1/1/1998', --@start_date datetime, --= 'jan 01 1900 12:00 AM',
	 '7/12/2017', --@end_date datetime,  -- ='dec 31 2050 11:59 PM',
	 'dpl_stu_app4_rad', --@analyte_groups varchar(2000),
	 null, --@param varchar (2000),
	 null, --@fraction varchar(20),
	 'wg', --@matrix_codes varchar (500),
	 'pci/l', --@target_unit varchar(100),
	 'result', --@limit_type varchar (10) = 'RL',
	 null, --@user_qual_def varchar (10) = '# Q',
	 'n', --@show_val_yn varchar (10) = 'N',
	 'n', --@detected_chem_only varchar (10) = 'N'
	  'fed_Rsl-2017-06_MCL-wg',  --@action levels
	  'n'