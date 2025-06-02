/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
Note: overseas competitions include a rank column to represent the official ranking; however, local competitions do **not** include a rank column. 
this is intentional, as part of the project is to demonstrate how to compute ranks dynamically based on the 'results', 'sex' and 'cateogry' fields

*/

-- ==============================
-- Bronze layer, 100m individual results
-- ==============================

IF OBJECT_ID('100m_local_1_results', 'U') IS NOT NULL
    DROP TABLE [100m_local_1_results];
GO

-- local event
CREATE TABLE bronze.[100m_local_1_results] (
	id						INT,				-- id entry for competition
	first_name					NVARCHAR(50),			-- athlete's first name
	last_name					NVARCHAR(50),			-- athlete's last name/surname
	full_name					NVARCHAR(100),			-- athlete's name in full
	sex						NVARCHAR(50),			-- event and athlete eligibility based on biological characteristics typically assigned at birth
	dob						DATE,				-- athlete's date of birth
	nationality					NVARCHAR(50),			-- athlete's nationality
	club						NVARCHAR(50),			-- club that an athlete is representing
	competition_name				NVARCHAR(50),			-- name of the competition
	date_meet					DATE,				-- date of the competition
	[event]						NVARCHAR(50),			-- competition/activity the athlete is participating in
	category					NVARCHAR(50),			-- age category that the athlete is competing in 
	heat_number					INT,				-- specific heat number the athlete is competing within an event
	results						DECIMAL(6,3),			-- outcome of the athlete's performance in the event
	wind_factor					DECIMAL(4,2),			-- wind speed and direction affecting the athlete's performance during an event
	[format]					NVARCHAR(50),			-- structure or stage of the competition (e.g., timed-final, heats, semi-finals, finals
);
GO

IF OBJECT_ID('100m_local_2_results', 'U') IS NOT NULL
    DROP TABLE [100m_local_2_results];
GO

-- local competition
CREATE TABLE bronze.[100m_local_2_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

IF OBJECT_ID('100m_local_3_results', 'U') IS NOT NULL
    DROP TABLE [100m_local_3_results];
GO

-- local competition
CREATE TABLE bronze.[100m_local_3_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

IF OBJECT_ID('100m_local_4_results', 'U') IS NOT NULL
    DROP TABLE [100m_local_4_results];
GO

-- local competition
CREATE TABLE bronze.[100m_local_4_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

IF OBJECT_ID('100m_local_5_results', 'U') IS NOT NULL
    DROP TABLE [100m_local_5_results];
GO

-- local competition
CREATE TABLE bronze.[100m_local_5_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

-- local competition
CREATE TABLE bronze.[100m_national_open_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

IF OBJECT_ID('100m_ncac_results', 'U') IS NOT NULL
    DROP TABLE [100m_ncac_results];
GO

-- local competition
CREATE TABLE bronze.[100m_ncac_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	dob						DATE,
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
);
GO

IF OBJECT_ID('100m_U15_little_athletics_results', 'U') IS NOT NULL
    DROP TABLE [100m_U15_little_athletics_results];
GO

-- Overseas competition
CREATE TABLE bronze.[100m_U15_little_athletics_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
	[rank]						INT,				-- an athlete's rank in each qualifying round
);
GO

IF OBJECT_ID('100m_U18_continental_results', 'U') IS NOT NULL
    DROP TABLE [100m_U18_continental_results];
GO

-- Overseas competition
CREATE TABLE bronze.[100m_U18_continental_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
	[rank]						INT,
);
GO

IF OBJECT_ID('100m_U20_continental_results', 'U') IS NOT NULL
    DROP TABLE [100m_U20_continental_results];
GO

-- Overseas competition
CREATE TABLE bronze.[100m_U20_continental_results] (
	id						INT,
	first_name					NVARCHAR(50),
	last_name					NVARCHAR(50), 
	full_name					NVARCHAR(100),
	sex						NVARCHAR(50),
	nationality					NVARCHAR(50),
	club						NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	[event]						NVARCHAR(50),
	category					NVARCHAR(50),
	heat_number					INT,
	results						DECIMAL(6,3), 
	wind_factor					DECIMAL(4,2),
	[format]					NVARCHAR(50),
	[rank]						INT,
);
GO

-- ==============================
-- Bronze layer, 4x100m relays results
-- ==============================
IF OBJECT_ID('relays_local_2_results', 'U') IS NOT NULL
    DROP TABLE relays_local_2_results;
GO

-- local competition
CREATE TABLE bronze.[relays_local_2_results] (
	id						INT,				-- id for the competition
	team						NVARCHAR(50),			-- team/country name for competition
	sex						NVARCHAR(50),			-- event and athlete eligibility based on biological characteristics typically assigned at birth
	category					NVARCHAR(50),			-- age category of the competition
	[event]						NVARCHAR(50),			-- specified event of the participation
	[format]					NVARCHAR(50),			-- structure or stage of the competition (e.g., timed-final, heats, semi-finals, finals
	competition_name				NVARCHAR(50),			-- name of the competition
	date_meet					DATE,				-- date of the competition day
	leg_1_full_name					NVARCHAR(50),			-- full name of the first leg runner in the relay team
	leg_2_full_name					NVARCHAR(50),			-- full name of the second leg runner in the relay team
	leg_3_full_name					NVARCHAR(50),			-- full name of the third leg runner in the relay team
	leg_4_full_name					NVARCHAR(50),			-- full name of the fourth leg runner in the relay team
	leg_1_split					DECIMAL(6,2),			-- split time of the first leg runner in the race
	leg_2_split					DECIMAL(6,2),			-- split time of the second leg runner in the race
	leg_3_split					DECIMAL(6,2),			-- split time of the third leg runner in the race
	leg_4_split					DECIMAL(6,2),			-- split time of the fourth leg runner in the race
	first_dist_split				DECIMAL(6,2),			-- split time of the first distance in the race
	second_dist_split				DECIMAL(6,2),			-- split time of the second distance in the race
	third_dist_split				DECIMAL(6,2),			-- split time of the third distance in the race
	results						DECIMAL(6,3),			-- final result of the team in the race
);
GO

IF OBJECT_ID('relays_local_3_results', 'U') IS NOT NULL
    DROP TABLE relays_local_3_results;
GO

-- local competition
CREATE TABLE bronze.[relays_local_3_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
);
GO

IF OBJECT_ID('relays_local_4_results', 'U') IS NOT NULL
    DROP TABLE relays_local_4_results;

-- local competition
CREATE TABLE bronze.[relays_local_4_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
);
GO

IF OBJECT_ID('relays_nationals_open_results', 'U') IS NOT NULL
    DROP TABLE relays_nationals_open_results;
GO

-- local competition
CREATE TABLE bronze.[relays_nationals_open_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
	[rank]						INT,
);
GO

IF OBJECT_ID('relays_ncac_results', 'U') IS NOT NULL
    DROP TABLE relays_ncac_results;
GO

-- local competition
CREATE TABLE bronze.[relays_ncac_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
);
GO

IF OBJECT_ID('relays_U15_little_athletics_results', 'U') IS NOT NULL
    DROP TABLE relays_U15_little_athletics_results;
GO

-- overseas competition
CREATE TABLE bronze.[relays_U15_little_athletics_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
	[rank]						INT,
);
GO

IF OBJECT_ID('relays_U18_continental_results', 'U') IS NOT NULL
    DROP TABLE relays_U18_continental_results;
GO

-- overseas competition
CREATE TABLE bronze.[relays_U18_continental_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
	[rank]						INT,
);
GO

IF OBJECT_ID('relays_U20_continental_results', 'U') IS NOT NULL
    DROP TABLE relays_U20_continental_results;
GO

-- overseas competition
CREATE TABLE bronze.[relays_U20_continental_results] (
	id						INT,
	team						NVARCHAR(50),
	sex						NVARCHAR(50),
	category					NVARCHAR(50),
	[event]						NVARCHAR(50),
	[format]					NVARCHAR(50),
	competition_name				NVARCHAR(50),
	date_meet					DATE,
	leg_1_full_name					NVARCHAR(50),
	leg_2_full_name					NVARCHAR(50),
	leg_3_full_name					NVARCHAR(50),
	leg_4_full_name					NVARCHAR(50),
	leg_1_split					DECIMAL(6,2),
	leg_2_split					DECIMAL(6,2),
	leg_3_split					DECIMAL(6,2),
	leg_4_split					DECIMAL(6,2),
	first_dist_split				DECIMAL(6,2),
	second_dist_split				DECIMAL(6,2),
	third_dist_split				DECIMAL(6,2),
	results						DECIMAL(6,3), 
	[rank]						INT,
);
GO

-- ==============================
-- Bronze layer, qualifications
-- ==============================
IF OBJECT_ID('qualification_2025', 'U') IS NOT NULL
    DROP TABLE qualification_2025;
GO

CREATE TABLE bronze.[qualification_2025] (
	id						INT,					-- id entry of the competitions
	sex						NVARCHAR(50),				-- event and athlete eligibility based on biological characteristics typically assigned at birth
	category					NVARCHAR(50),				-- age categories for the competitions
	competition_name				NVARCHAR(50),				-- name of competition
	date_meet					DATE,					-- date of the competition
	qualification_window_open			DATE,					-- opening window where qualifications start
	qualification_window_closed			DATE,					-- closing window where qualifications end
	[type]						NVARCHAR(50),				-- local or overseas competition
	method						NVARCHAR(50),				-- form of selection (e.g., top performers, meet the qualification criteria or expression of interest
	[event]						NVARCHAR(50),				-- specifc event
	meet_criteria					DECIMAL (6,2),				-- result equal to or lower to qualify for the competition
	[2%_off_mark]					DECIMAL (6,2),				-- 2% away from the qualify mark for the competition
	[3.5%_off_mark]					DECIMAL (6,2),				-- 3.5% away from the qualify mark for the competition
	[5%_off_mark]					DECIMAL (6,2),				-- 5% away from the qualify mark for the competition
);
GO

-- ==============================
-- Bronze layer, national_records
-- ==============================
IF OBJECT_ID('national_records_2024', 'U') IS NOT NULL
    DROP TABLE national_records_2024;
GO

CREATE TABLE bronze.[national_records_2024] (
	id						INT,					-- id entry of the records
	sex						NVARCHAR(50),				-- event and athlete eligibility based on biological characteristics typically assigned at birth
	category					NVARCHAR(50),				-- age category of the national record
	record_status					NVARCHAR(50),				-- is record current or undergoing rectifications
	first_name					NVARCHAR(50) NULL,			-- athlete's first name
	last_name					NVARCHAR(50) NULL,			-- athlete's last name/surname
	full_name					NVARCHAR(100) NULL,			-- athlete's name in full
	team						NVARCHAR(50),				-- Nationality or national team		
	[event]						NVARCHAR(50),				-- specifc event of the national record
	results						DECIMAL(6,3),				-- performance of the athlete/team in the specific event
	wind_factor					DECIMAL(6,3),				-- wind considerations
	dob						DATE NULL,				-- athlete's date of birth
	record_date					DATE,					-- date where the record was broken
);
GO



