/*• Create a schema named nba_analytics, set it as the default schema, and load your player and game data tables from the CSV files.*/

Create Table Advanced (
player_id Varchar(50) Primary Key Not Null,
team_id Varchar(50),
season Text,
league Varchar(10),
player Varchar(100),
age Integer,
team Varchar(100),
position Varchar(5),
games Integer,
games_started Integer,
minutes_played Integer,
per Decimal (10,2),
ts_percent Decimal (5,3),
three_attempt_rt Decimal (5,3),
free_throw_rt Decimal (5,3),
orb_percent Decimal (5,2),
drb_percent Decimal (5,2),
trb_percent Decimal (5,2),
ast_percent Decimal (5,2),
stl_percent Decimal (5,2),
blk_percent Decimal (5,2),
tov_percent Decimal (5,2),
usg_percent Decimal (5,2),
offensive_ws Decimal (5,2),
defensive_ws Decimal (5,2),
ws Decimal (5,2),
ws_per48 Decimal (5,2),
offensive_bpm Decimal (5,2),
defensive_bpm Decimal (5,2),
bpm Decimal (5,2),
vorp Decimal (5,2),
Foreign Key (team_id) References Player_Shooting(team_id)
);


Create Table Opp_Stats_Per100 (
team_id Text Primary Key Not Null,
season Text,
league Varchar(5),
team Varchar(50),
abbreviation Varchar(5),
playoffs Varchar(10),
games Integer,
minutes_played Integer,
opp_fg_per_100_poss Decimal(5,2),
opp_fga_per_100_poss Decimal(5,3),
opp_fg_percent Decimal(5,3),
opp_3p_per_100poss Decimal(5,3),
opp_3pa_rt_per_100poss Decimal(5,3),
opp_3p_percent Decimal(5,3),
opp_2p_per_100poss Decimal(5,3),
opp_2pa_per_100poss Decimal(5,3),
opp_2p_percent Decimal(5,3),
opp_ft_per_100poss Decimal(5,3),
opp_fta_per_100poss Decimal(5,3),
opp_ft_percent Decimal(5,2),
opp_orb_per_100poss Decimal(5,3),
opp_drb_per_100poss Decimal(5,3),
opp_trb_per_100poss Decimal(5,3),
opp_ast_per_100poss Decimal(5,3),
opp_stl_per_100poss Decimal(5,3),
opp_blk_per_100poss Decimal(5,3),
opp_tov_per_100poss Decimal(5,3),
opp_pf_per_100poss Decimal(5,3),
opp_pts_per_100poss Decimal(5,3)
);


Create Table Player_Per100(
player_id Text Primary Key Not Null,
team_id Text,
season Text,
league Varchar(5),
player Varchar(100),
age Integer,
team Varchar(100),
position Varchar(5),
games Integer,
games_started Integer,
minutes_played Integer,
fg_per_100_poss Decimal(5,3),
fga_per_100_poss Decimal(5,3),
fg_percent Decimal(5,3),
made_3_per_100poss Decimal(5,3),
attempted_3p_per_100poss Decimal(5,3),
three_point_percent Decimal(5,3),
made_2p_per_100poss Decimal(5,3),
attempted_2p_per_100poss Decimal(5,3),
two_point_percent Decimal(5,3),
effective_fg_percent Decimal(5,3),
ft_per_100poss Decimal(5,3),
fta_per_100poss Decimal(5,3),
ft_percent Decimal(5,3),
orb_per_100poss Decimal(5,3),
drb_per_100poss Decimal(5,3),
trb_per_100poss Decimal(5,3),
ast_per_100poss Decimal(5,3),
stl_per_100poss Decimal(5,3),
blk_per_100poss Decimal(5,3),
tov_per_100poss Decimal(5,3),
pf_per_100poss Decimal(5,3),
pts_per_100poss Decimal(5,3),
offensive_rtg Decimal(5,3),
defensive_rtg Decimal(5,3),
Foreign Key (team_id) References Opp_Stats_Per100(team_id)
);


Create Table Player_Shooting(
player_id Text Primary Key Not Null,
team_id Text,
season Text,
league Varchar(5),
player Varchar(100),
age Integer,
team Varchar(100),
position Varchar(100),
games Integer,
games_started Integer,
minutes_played Integer,
fg_percent Decimal(5,3),
avg_dist_fga Decimal(5,3),
fga_percent_2p Decimal(5,3),
fga_percent_0to3ft Decimal(5,3),
fga_percent_3to10ft Decimal(5,3),
fga_percent_10to16ft Decimal(5,3),
fga_percent_16to3p Decimal(5,3),
fga_percent_3p Decimal(5,3),
fg_percent_2p Decimal(5,3),
fg_percent_0to3ft Decimal(5,3),
fg_percent_3to10ft Decimal(5,3),
fg_percent_10to16ft Decimal(5,3),
fg_percent_16ft3p Decimal(5,3),
fg_percent_3p Decimal(5,3),
percent_assisted_2p Decimal(5,3),
percent_assisted_3p Decimal(5,3),
percent_fga_dunks Decimal(5,3),
num_of_dunks Integer,
attempted_percent_corner_3p Decimal(5,3),
corner_3_point_percent Decimal(5,3),
num_heaves_attempted Integer,
num_heaves_made Integer,
Foreign Key (team_id) References Team_Stats_Per100(team_id)
);

Create Table Team_Stats_Per100(
team_id Text Primary Key Not Null,
season Text,
league Varchar(5),
team Varchar(50),
abbreviation Varchar(5),
playoffs Varchar(10),
games Integer,
minutes_played Integer, 
fg_per_100_poss Decimal(5,3), 
fga_per_100_poss Decimal(5,3), 
fg_percent Decimal(5,3), 
made_3_per_100poss Decimal(5,3),
attempted_3p_per_100poss Decimal(5,3),
three_point_percent Decimal(5,3),
made_2p_per_100poss Decimal(5,3),
attempted_2p_per_100poss Decimal(5,3),
two_point_percent Decimal(5,3),
ft_per_100poss Decimal(5,3), 
fta_per_100poss Decimal(5,3), 
ft_percent Decimal(5,3), 
orb_per_100poss Decimal(5,3), 
drb_per_100poss Decimal(5,3), 
trb_per_100poss Decimal(5,3), 
ast_per_100poss Decimal(5,3), 
stl_per_100poss Decimal(5,3), 
blk_per_100poss Decimal(5,3), 
tov_per_100poss Decimal(5,3), 
pf_per_100poss Decimal(5,3), 
pts_per_100poss Decimal(5,3)
)

Create Table Team_Totals(
team_id Text Primary Key Not Null,
season Year,
league Varchar(5),
team Varchar(50),
abbreviation Varchar(5),
playoffs Varchar(10),
games Integer,
minutes_played Integer,
total_fg Integer,
total_fga Integer,
fg_percent Decimal(5,3),
total_3pm Integer,
total_3pa Integer,
total_3p_scored Integer,
three_percent Decimal(5,3),
total_2pm Integer,
total_2pa Integer,
total_2p_scored Integer,
fg_percent_2p Decimal(5,3),
total_ft Integer,
total_fta Integer,
ft_percent Decimal(5,3),
total_orb Integer,
total_drb Integer,
total_trb Integer,
total_ast Integer,
total_stl Integer,
total_blk Integer,
total_tov Integer,
total_pf Integer,
total_pts Integer
);

Create Table Team_Summaries(
team_id Text Primary Key Not Null,
season Year,
league Varchar(5),
team Varchar(50),
abbreviation Varchar(5),
playoffs Varchar(10),
age Integer,
win Integer,
loss Integer,
p_wins Integer,
p_losses Integer,
margin_of_victory Decimal(5,3),
sos Decimal(5,3),
srs Decimal(5,3),
o_rtg Decimal(5,3),
d_rtg Decimal(5,3),
n_rtg Decimal(5,3),
pace Decimal(5,3),
ft_rate Decimal(5,3),
three_p_ar Decimal(5,3),
ts_percent Decimal(5,3),
e_fg_percent Decimal(5,3),
tov_percent Decimal(5,3),
orb_percent Decimal(5,3),
ft_fga Decimal(5,3),
opp_e_fg_percent Decimal(5,3),
opp_tov_percent Decimal(5,3),
drb_percent Decimal(5,3),
opp_ft_fga Decimal(5,3)
);


/*Q1. Calculate the total number of player-season records in the dataset.*/

Select Count(*) As Total_Player_Season_Records
From Player_Per100;


/*Q2. Identify the top players by total three-point attempts rate eras. Eras being grouped by seasons 1980-1999 Era 1, 2000-2012 era 2, 2015-2025 era*/

With Era_Classified As(
Select
player As Player,
three_attempt_rt as Three_Attempt_Rt,
CASE
	When season Between 1980 And 1999 Then '1980-1999'
	When season Between 2000 And 2012 Then '2000-2012'
	When season Between 2013 And 2025 Then '2013-2025'
End As era
From Advanced
Where three_attempt_rt Is Not Null
),
era_totals As(
Select
era As Era,
player As Player,
Round(Sum(three_attempt_rt), 2) As Total_3_Attempt_Rt
From Era_Classified
Where era Is Not Null
Group By era, player
),
Era_Ranked As(
Select
era As Era,
player As Player,
total_3_attempt_rt As Total_3_Attempt_Rt,
Rank() Over( Partition By era 
Order By total_3_attempt_rt Desc) As Rnk
From Era_Totals
)
SELECT
era As Era,
rnk As Rank,
player As Player,
total_3_attempt_rt As Total_3_Attempt_Rt
FROM era_ranked
WHERE rnk <= 10
ORDER BY era, rnk;

/*Q3. Calculate the average pace (per 100 possessions) for each season. In which season did pace reach its lowest point, and when did it begin accelerating again?*/

WITH regular_season As (
Select
season as Season,
pace As Pace
From Team_Summaries
),
avg_pace_by_season As (
Select
season As Season,
Round(Avg(pace), 2) As Avg_Pace
From regular_season
Group By season
),
pace_with_lag As (
Select
season,
avg_pace,
Lag(avg_pace) Over (Order By season) As Prev_Avg_Pace,
avg_pace - Lag(avg_pace) Over (Order By season) As Pace_Change
From avg_pace_by_season
)
Select
season As Season,
avg_pace As Avg_Pace,
prev_avg_pace As Prev_Avg_Pace,
Round(pace_change, 2) As Pace_Change,
Case
When pace_change > 0 Then 'Accelerating'
When pace_change < 0 Then 'Slowing'
Else 'Unchanged'
End As trend
From pace_with_lag
Order By season;



/*Q4. Determine the number of players classified as "stretch bigs" (centers or power forwards with three-point attempt rate above 20%) and the percentage of total big-man records they represent per era. Eras being grouped by seasons 1980-1999 Era 1, 2000-2012 era 2, 2015-2025 era*/

With big_men As (
Select
player As Player,
season As Season,
position As Position,
three_attempt_rt As Three_Atempt_Rate,
CASE
When season Between 1980 And 1989 Then '1980-1999'
When season Between 1990 And 1999 Then '2000-2012'
When season Between 2000 And 2009 Then '2013-2025'
End As era
From Advanced 
Where position In ('C', 'PF')
And three_attempt_rt Is Not Null
And three_attempt_rt != ''
),
era_summary As (
Select
Era,
Count(*) As Total_Big_Records,
Sum(Case When Cast(Three_Atempt_Rate As Real) > 0.20 Then 1 Else 0 End) As Stretch_Big_Count
From big_men
Where era Is Not Null
Group By era
)
Select
era As Era,
total_big_records As Total_Big_Records,
stretch_big_count As Stretch_Big_Count,
Round(stretch_big_count * 100.0 / total_big_records, 1) As Stretch_Big_Pct
From era_summary
Order By era;


/*Q5. Identify the age distribution of players who led their team in three-point attempts.*/

With player_3pa As (
Select
player_id As Player_ID,
player As Player,
team As Team,
season As Season,
age As Age,
attempted_3p_per_100poss * (minutes_played / 100.0) As Est_3PA
From Player_Per100
Where attempted_3p_per_100poss Is Not Null
),
ranked As (
Select
player As Player,
team As Team,
season As Season,
age As Age,
Est_3PA,
Rank() Over (Partition By team, season Order By est_3pa DESC) As Rnk
From player_3pa
),
team_leaders As (
Select 
player As Player,
team As Team,
season As Season,
age As Age
From ranked
Where rnk = 1
)
Select
season as Season,
age As Age,
Count(*) As Num_Leaders
From team_leaders
Group By season, age
Order By season DESC;


/*Q6. Calculate the average percent of shot attempts from mid-range for players in each position group from each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/


With Era_Classified As (
Select
position as Position,
fga_percent_10to16ft As FGAR_10to16ft,
fga_percent_16to3p As FGAR_16to3p,
minutes_played As Minutes_Played,
CASE
When season Between 1997 And 2005 Then '1997-2005'
When season Between 2006 And 2014 Then '2006-2014'
When season Between 2015 And 2025 Then '2015-2025'
End As Era
From Player_Shooting 
Where position Is Not Null
And season Between 1997 and 2025
),
Midrange_Estimated As (
Select
era As Era,
position As Position,
(Coalesce(FGAR_10to16ft, 0) +
Coalesce(FGAR_16to3p, 0)) as Mid_AR
From Era_Classified
Where era Is Not Null
),
Era_Position_Summary As (
Select
era As Era,
position As Position,
Round(Avg(Mid_AR) * 100, 2) Avg_Mid_AR
From Midrange_Estimated
Group By era, position
)
Select
Era,
Position,
Avg_Mid_AR
From Era_Position_Summary
Order By Position, Era;

/*Q7. Calculate the average percent of shot attempts from three points range for players in each position group from each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/

With Era_Classified As (
Select
position as Position,
fga_percent_3p as FGA_Percent_3P,
minutes_played As Minutes_Played,
CASE
When season Between 1997 And 2005 Then '1997-2005'
When season Between 2006 And 2014 Then '2006-2014'
When season Between 2015 And 2025 Then '2015-2025'
End As Era
From Player_Shooting 
Where position Is Not Null
And season Between 1997 and 2025
),
Three_Estimated As (
Select
era As Era,
position As Position,
Coalesce(FGA_Percent_3P, 0) as Three_AR
From Era_Classified
Where era Is Not Null
),
Era_Position_Summary As (
Select
era As Era,
position As Position,
Round(Avg(Three_AR) * 100, 2) AS Avg_3P_AR
From Three_Estimated
Group By era, position
)
Select
Era,
Position,
Avg_3P_AR
From Era_Position_Summary
Order By Position, Era;

/*Q8. Calculate the average percent of shot attempts from the restricted area for players in each position group across each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/
*/

With Era_Classified As (
Select
position as Position,
fga_percent_0to3ft As FGA_Percent_0to3Ft,
CASE
When season Between 1997 And 2005 Then '1997-2005'
When season Between 2006 And 2014 Then '2006-2014'
When season Between 2015 And 2025 Then '2015-2025'
End As Era
From Player_Shooting 
Where position Is Not Null
And season Between 1997 and 2025
),
Three_Estimated As (
Select
era As Era,
position As Position,
Coalesce(FGA_Percent_0to3Ft, 0) as Restricted_AR
From Era_Classified
Where era Is Not Null
),
Era_Position_Summary As (
Select
era As Era,
position As Position,
Round(Avg(Restricted_AR) * 100, 2) AS Avg_Restricted_AR
From Three_Estimated
Group By era, position
)
Select
Era,
Position,
Avg_Restricted_AR
From Era_Position_Summary
Order By Position, Era;


/*Q9 Calculate the average 3 points scored and it's share in toal points for the entire league by era. Eras being grouped by seasons 1980-1999 Era 1, 2000-2012 era 2, 2013-2025 era*/

With eras As (
Select
total_3p_scored As Total_3P_Scored,
total_pts As Total_Pts,
Case
When season Between 1980 And 1989 Then '1980-1999'
When season Between 1990 And 1999 Then '2000-2012'
When season Between 2000 And 2009 Then '2013-2025'
End As era
From Team_Totals
),
Era_Summary As (
Select
era As Era,
Round(Avg(total_3p_scored), 1) As Avg_3P_Scored,
Round(Avg(Cast(total_3p_scored As Real) / 
Nullif(total_pts, 0)) * 100, 2) As Avg_3P_Share_Pct
From Eras
Where era Is Not Null
Group By era
)
Select *
From Era_Summary
Order By era;


/*Q10. Top 5 teams in 3 point attempts in 1987, 1996, 2015 vs that season champions(1987 - Los Angles Lakers, 1996 - Chicago Bulls, and 2015 - Golden State Warriros) in 3 point attempts*/

With Target_Seasons As (
Select
season As Season,
team As Team,
abbreviation As Abbreviation,
total_3pa As Total_3PA,
Case
When season = 1987 Then 'Los Angeles Lakers'
When season = 1996 Then 'Chicago Bulls'
When season = 2015 Then 'Golden State Warriors'
End As benchmark_team
From Team_Totals
Where season In (1987, 1996, 2015)
),
Ranked_3PA As (
Select
season As Season,
team As Team,
abbreviation As Abbreviation,
total_3pa As Total_3PA,
benchmark_team As Benchmark_Team,
Rank() Over (Partition By season Order By total_3pa DESC) As Rnk
From Target_Seasons
),
Top5 As (
Select *
From Ranked_3PA
Where rnk <= 5
),
Benchmark_Teams As (
Select
t.season,
t.team As Benchmark_Team_Name,
t.total_3pa As Benchmark_3PA,
s.win As Benchmark_Wins,
s.loss As Benchmark_losses
From Team_Totals t
Inner Join Team_Summaries s
On t.team_id = s.team_id
And t.season = s.season
And t.playoffs = s.playoffs
Where (t.season = 1987 And t.team = 'Los Angeles Lakers')
OR (t.season = 1996 And t.team = 'Chicago Bulls')
OR (t.season = 2015 And t.team = 'Golden State Warriors')
),
Final As (
Select
t.season As Season,
t.rnk As Rank,
t.team As Team,
t.total_3pa As Team_3PA,
b.benchmark_team_name As Benchmark_Team,
b.benchmark_wins As Benchmark_W,
b.benchmark_losses As Benchmark_L,
b.benchmark_3pa As Benchmark_3PA,
t.total_3pa - b.benchmark_3pa As Diff_vs_Benchmark
From Top5 t
Left Join Benchmark_Teams b On t.Season = b.Season
)
Select *
From Final
Order By Season, Rank;

/*Q11. Create View for Players Stats*/

Create View If Not Exists Players_Stats AS
Select
p.player_id,
p.team_id,
p.season,
p.league,
p.player,
p.team,
p.position,
p.minutes_played,
p.fg_per_100_poss,
p.fga_per_100_poss,
p.fg_percent,
p.made_3_per_100poss,
p.attempted_3p_per_100poss,
p.three_point_percent,
p.made_2p_per_100poss,
p.attempted_2p_per_100poss,
p.two_point_percent,
p.effective_fg_percent,
p.ft_per_100poss,
p.fta_per_100poss,
p.ft_percent,
p.orb_per_100poss,
p.drb_per_100poss,
p.trb_per_100poss,
p.ast_per_100poss,
p.stl_per_100poss,
p.blk_per_100poss,
p.tov_per_100poss,
p.pf_per_100poss,
p.pts_per_100poss,
p.offensive_rtg,
p.defensive_rtg,
s.avg_dist_fga,
s.fga_percent_2p,
s.fga_percent_0to3ft,
s.fga_percent_3to10ft,
s.fga_percent_10to16ft,
s.fga_percent_16to3p,
a.three_attempt_rt,
s.fg_percent_2p,
s.fg_percent_0to3ft,
s.fg_percent_3to10ft,
s.fg_percent_10to16ft,
s.fg_percent_16ft3p,
s.fg_percent_3p,
s.percent_assisted_2p,
s.percent_assisted_3p,
s.percent_fga_dunks,
s.num_of_dunks,
s.attempted_percent_corner_3p,
s.corner_3_point_percent        AS corner_3p_percent,
s.num_heaves_attempted,
s.num_heaves_made
From Player_Per100 p
Left Join Player_Shooting s
On  p.player_id = s.player_id
And p.season    = s.season
And p.team_id   = s.team_id
Left Join Advanced a
On  p.player_id = a.player_id
And p.season    = a.season
And p.team_id   = a.team_id;

/*Q12. Create View for Team Stats*/


Create View If Not Exists Teams_Stats AS
SELECT
ts.team_id,
ts.season,
ts.league,
ts.team,
ts.abbreviation,
ts.playoffs,
ts.games,
ts.minutes_played,
ts.fg_per_100_poss,
ts.fga_per_100_poss,
ts.fg_percent,
ts.made_3_per_100poss,
ts.attempted_3p_per_100poss,
ts.three_point_percent,
ts.made_2p_per_100poss,
ts.attempted_2p_per_100poss,
ts.two_point_percent,
ts.ft_per_100poss,
ts.fta_per_100poss,
ts.ft_percent,
ts.orb_per_100poss,
ts.drb_per_100poss,
ts.trb_per_100poss,
ts.ast_per_100poss,
ts.stl_per_100poss,
ts.blk_per_100poss,
ts.tov_per_100poss,
ts.pf_per_100poss,
ts.pts_per_100poss,
o.opp_fg_per_100_poss,
o.opp_fga_per_100_poss,
o.opp_fg_percent,
o.opp_3p_per_100poss,
o.opp_3pa_rt_per_100poss,
o.opp_3p_percent,
o.opp_2p_per_100poss,
o.opp_2pa_per_100poss,
o.opp_2p_percent,
o.opp_ft_per_100poss,
o.opp_fta_per_100poss,
o.opp_ft_percent,
o.opp_orb_per_100poss,
o.opp_drb_per_100poss,
o.opp_trb_per_100poss,
o.opp_ast_per_100poss,
o.opp_stl_per_100poss,
o.opp_blk_per_100poss,
o.opp_tov_per_100poss,
o.opp_pf_per_100poss,
o.opp_pts_per_100poss,
tt.total_fg,
tt.total_fga,
tt.total_3pm,
tt.total_3pa,
tt.total_3p_scored,
tt.three_percent,
tt.total_2pm,
tt.total_2pa,
tt.total_2p_scored,
tt.fg_percent_2p,
tt.total_ftm,
tt.total_fta,
tt.total_orb,
tt.total_drb,
tt.total_trb,
tt.total_ast,
tt.total_stl,
tt.total_blk,
tt.total_tov,
tt.total_pf,
tt.total_pts,
sm.win,
sm.loss,
sm.p_wins,
sm.p_losses,
sm.margin_of_victory,
sm.sos,
sm.srs,
sm.o_rtg,
sm.d_rtg,
sm.n_rtg,
sm.pace,
sm.ft_rate,
sm."three_p_ar",
sm.ts_percent,
sm.e_fg_percent,
sm.tov_percent,
sm.orb_percent,
sm.ft_fga,
sm.opp_e_fg_percent,
sm.opp_tov_percent,
sm.drb_percent,
sm.opp_ft_fga
From Team_Stats_Per100 ts
Left Join Opp_Stats_Per100 o
On  ts.team_id  = o.team_id
And ts.season   = o.season
And ts.playoffs = o.playoffs
Left Join Team_Totals tt
On  ts.team_id  = tt.team_id
And ts.season   = tt.season
And ts.playoffs = tt.playoffs
Left Join Team_Summaries sm
On  ts.team_id  = sm.team_id
And ts.season   = sm.season
And ts.playoffs = sm.playoffs;