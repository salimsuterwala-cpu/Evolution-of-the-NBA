/*Create a schema named nba_analytics, set it as the default schema, and load your player and game data tables from the CSV files.*/

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


Create Table Player_Totals(
player_id Text Primary Key Not Null,
team_id Text,
season Text,
lg Varchar(5),
player Varchar(100),
age Integer,
team Varchar(100),
pos Varchar(100),
p_total_g Integer,
p_total_gs Integer,
p_total_mp Integer,
p_total_fg Integer,
p_total_fga Integer,
fg_percent Decimal(5,3),
p_total_x3p Integer,
p_total_x3pa Integer,
x3p_percent Decimal(5,3),
p_total_x2p Integer,
p_total_x2pa Integer,
x2p_percent Decimal(5,3),
e_fg_percent Decimal(5,3),
p_total_ft Integer,
p_total_fta Integer,
ft_percent Integer,
p_total_orb Integer,
p_total_drb Integer,
p_total_rb Integer,
p_total_ast Integer,
p_total_stl Integer,
p_total_blk Integer,
p_total_tov Integer,
p_total_pf Integer,
p_total_pts Integer,
Foreign Key (team_id) References Team_Totals(team_id)
);



/*Calculate the total number of player-season records in the dataset.*/

Select Count(*) As Total_Player_Season_Records
From Player_Per100;


/*Identify the top players by total three-point attempts by eras. Eras being grouped by seasons 1980-1999 Era 1, 2000-2012 era 2, 2013-2025 era*/

With Era As(
Select
player As Player,
p_total_x3pa as Three_Point_Attempts,
CASE
When season Between 1980 And 1999 Then '1980-1999'
When season Between 2000 And 2012 Then '2000-2012'
When season Between 2013 And 2025 Then '2013-2025'
End As era
From Player_Totals
Where p_total_x3pa Is Not Null
),
Totals As(
Select
era As Era,
player As Player,
Round(Sum(Three_Point_Attempts), 2) As Three_Point_Attempts
From Era
Where era Is Not Null
Group By era, player
),
Ranked As(
Select
era As Era,
player As Player,
Three_Point_Attempts,
Rank() Over( Partition By Era 
Order By Three_Point_Attempts Desc) As Rnk
From Totals
)
SELECT
Era,
Rnk as Rank,
Player,
Three_Point_Attempts
FROM Ranked
WHERE rnk <= 10
ORDER BY era, rnk;

/*Calculate the average pace (per 100 possessions) for each season. In which season did pace reach its lowest point, and when did it begin accelerating again?*/

WITH Reg_Season As (
Select
season as Season,
pace As Pace
From Team_Summaries
),
Avg_Pace As (
Select
season As Season,
Round(Avg(pace), 2) As Avg_Pace
From Reg_Season
Group By season
),
Pace_Revert As (
Select
season,
avg_pace,
Lag(avg_pace) Over (Order By season) As Prev_Avg_Pace,
avg_pace - Lag(avg_pace) Over (Order By season) As Pace_Change
From Avg_Pace
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
From Pace_Revert
Order By season;



/*Determine the number of players classified as "stretch bigs" (centers or power forwards with three-point attempt rate above 10%) and the percentage of total big-man records they represent per era. Eras being grouped by seasons 1980-1989, 1990-1999, 2000-2012, and 2013-2025.*/

With BG As (
Select
player As Player,
season As Season,
position As Position,
three_attempt_rt As Three_Atempt_Rate,
CASE
When season Between 1980 And 1989 Then '1980-1989'
When season Between 1990 And 1999 Then '1990-1999'
When season Between 2000 And 2012 Then '2000-2012'
When season Between 2013 And 2025 Then '2013-2025'
End As era
From Advanced 
Where position In ('C', 'PF')
And three_attempt_rt Is Not Null
And three_attempt_rt != ''
),
Era As (
Select
Era,
Count(*) As Total_Big_Records,
Sum(Case When Cast(Three_Atempt_Rate As Real) > 0.10 Then 1 Else 0 End) As Stretch_Big_Count
From BG
Where era Is Not Null
Group By era
)
Select
era As Era,
total_big_records As Total_Big_Records,
stretch_big_count As Stretch_Big_Count,
Round(stretch_big_count * 100.0 / total_big_records, 1) As Stretch_Big_Pct
From Era
Order By era;


/*Identify the age distribution of players who led their team in three-point attempts.*/

With P_3pa As (
Select
player_id As Player_ID,
player As Player,
team As Team,
season As Season,
age As Age,
p_total_x3pa * (p_total_mp / 100.0) As Est_3PA
From Player_Totals 
Where p_total_mp Is Not Null
),
ranked As (
Select
player As Player,
team As Team,
season As Season,
age As Age,
Est_3PA,
Rank() Over (Partition By team, season Order By est_3pa DESC) As Rnk
From P_3pa
),
Leaders As (
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
From Leaders
Group By season, age
Order By season DESC;


/*Calculate the average percent of shot attempts from mid-range for players in each position group from each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/


With Era As (
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
Estimate_Mid As (
Select
era As Era,
position As Position,
(Coalesce(FGAR_10to16ft, 0) +
Coalesce(FGAR_16to3p, 0)) as Mid_AR
From Era
Where era Is Not Null
),
Era_Position As (
Select
era As Era,
position As Position,
Round(Avg(Mid_AR) * 100, 2) Avg_Mid_AR
From Estimate_Mid
Group By era, position
)
Select
Era,
Position,
Avg_Mid_AR
From Era_Position
Order By Position, Era;

/*Calculate the average percent of shot attempts from three points range for players in each position group from each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/

With Era As (
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
Estimate_3 As (
Select
era As Era,
position As Position,
Coalesce(FGA_Percent_3P, 0) as Three_AR
From Era
Where era Is Not Null
),
Era_Position As (
Select
era As Era,
position As Position,
Round(Avg(Three_AR) * 100, 2) AS Avg_3P_AR
From Estimate_3
Group By era, position
)
Select
Era,
Position,
Avg_3P_AR
From Era_Position
Order By Position, Era;


/*Calculate the average percent of shot attempts from the restricted area for players in each position group across each era. Eras being grouped by seasons 1997-2005 Era 1, 2006-2014 era 2, 2015-2025 era*/
*/

With Era As (
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
Estimate_3 As (
Select
era As Era,
position As Position,
Coalesce(FGA_Percent_0to3Ft, 0) as Restricted_AR
From Era
Where era Is Not Null
),
Era_Position As (
Select
era As Era,
position As Position,
Round(Avg(Restricted_AR) * 100, 2) AS Avg_Restricted_AR
From Estimate_3
Group By era, position
)
Select
Era,
Position,
Avg_Restricted_AR
From Era_Position
Order By Position, Era;


/*Calculate the average 3 points scored and it's share in toal points for the entire league by era. Eras being grouped by seasons 1980-1989, 1990-1999, 2000-2012, and 2013-2025*/

With Eras As (
Select
total_3p_scored As Total_3P_Scored,
total_pts As Total_Pts,
Case
When season Between 1980 And 1989 Then '1980-1989'
When season Between 1990 And 1999 Then '1990-1999'
When season Between 2000 And 2012 Then '2000-2012'
When season Between 2013 And 2025 Then '2013-2025'
End As era
From Team_Totals
),
Summary As (
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
From Summary
Order By era;


/*Top 5 teams in 3 point attempts in 1987, 1996, 2005 and 2015 vs that season champions(1987 - Los Angles Lakers, 1996 - Chicago Bulls, 2005 - Spurs, and 2015 - Golden State Warriros) in 3 point attempts*/

With Target As (
Select
season As Season,
team As Team,
abbreviation As Abbreviation,
total_3pa As Total_3PA,
Case
When season = 1987 Then 'Los Angeles Lakers'
When season = 1996 Then 'Chicago Bulls'
When season = 2005 Then 'San Antonio Spurs'
When season = 2015 Then 'Golden State Warriors'
End As benchmark_team
From Team_Totals
Where season In (1987, 1996, 2005, 2015)
),
Ranked3 As (
Select
season As Season,
team As Team,
abbreviation As Abbreviation,
total_3pa As Total_3PA,
benchmark_team As Benchmark_Team,
Rank() Over (Partition By season Order By total_3pa DESC) As Rnk
From Target
),
Top5 As (
Select *
From Ranked3
Where rnk <= 5
),
Benchmark As (
Select
t.season,
t.team As Benchmark_Team,
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
OR (t.season = 2005 And t.team = 'San Antonio Spurs')
OR (t.season = 2015 And t.team = 'Golden State Warriors')
),
Final As (
Select
t.season As Season,
t.rnk As Rank,
t.team As Team,
t.total_3pa As Team_3PA,
b.benchmark_team As Benchmark_Team,
b.benchmark_wins As Benchmark_W,
b.benchmark_losses As Benchmark_L,
b.benchmark_3pa As Benchmark_3PA,
t.total_3pa - b.benchmark_3pa As Diff_vs_Benchmark
From Top5 t
Left Join Benchmark b On t.Season = b.Season
)
Select *
From Final
Order By Season, Rank;

/*Shot zone proportion by season*/

Select
ps.season As Season,
ps.position As Position,
Round(Sum(ps.fga_percent_0to3ft * pt.p_total_fga)/NullIf
(Sum(Case 
When ps.fga_percent_0to3ft Is Not Null Then pt.p_total_fga End), 0), 4) As Prop_0_to_3ft,
Round(Sum(ps.fga_percent_3to10ft * pt.p_total_fga)/NullIf
(Sum(Case 
When ps.fga_percent_3to10ft Is Not Null Then pt.p_total_fga END), 0), 4) AS Prop_3_to_10ft,
Round(Sum(ps.fga_percent_10to16ft * pt.p_total_fga)/NullIf
(Sum(Case 
When ps.fga_percent_10to16ft Is Not Null Then pt.p_total_fga END), 0), 4) AS Prop_10_to_16ft,
Round(Sum(ps.fga_percent_16to3p * pt.p_total_fga)/NullIf
(Sum(Case 
When ps.fga_percent_16to3p Is Not Null Then pt.p_total_fga END), 0), 4) AS Prop_16ft_to_3p,
Round(Sum(ps.fga_percent_3p * pt.p_total_fga)/NullIf
(Sum(Case 
When ps.fga_percent_3p Is Not Null Then pt.p_total_fga END), 0), 4) AS Prop_3pt
From Player_Shooting ps
Inner Join Player_Totals pt
On  ps.player_id = pt.player_id
And ps.team_id = pt.team_id           
And ps.season = pt.season           
Where pt.p_total_fga > 0
AND minutes >= 1500
And ps.fga_percent_2p Is Not Null
And ps.position Is Not Null 
And ps.position != 'N/A'
And ps.season < 2026
Group By ps.season, ps.position
Order By ps.position;

/*Compare Avg TOV rate and 3 point rate as it relates to pace of play by year from 1980 to 2025.*/

Select 
season As Season,
Round(Avg(pace), 2) As Avg_Pace,
Round(Avg(tov_percent), 2) As Avg_Tov_Rate,
Round(Avg([three _p_ar]), 2) As Avg_3pt_Rate,
Case
When Avg(pace) >= 100 Then 'Fast (>=100)'
When Avg(pace) >= 95 Then 'Moderate (95-99'
When Avg(pace) >= 90 Then 'Slow (90-94)'
Else 'Very Slow (<90)'
End As Pace_Tiers
From Team_Summaries
Where season Between 1980 and 2025
And pace Is Not Null
And tov_percent Is Not Null
And [three _p_ar] Is Not Null
Group by season
Order by season;


/*Create View for Players Stats*/

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
s.fg_percent_0to3ft,
s.fg_percent_3to10ft,
s.fg_percent_10to16ft,
s.fg_percent_16ft3p,
s.percent_assisted_2p,
s.percent_assisted_3p,
s.percent_fga_dunks,
s.num_of_dunks,
s.attempted_percent_corner_3p,
s.corner_3_point_percent        AS corner_3p_percent,
s.num_heaves_attempted,
s.num_heaves_made,
pt.p_total_fg,
pt.p_total_fga,
pt.p_total_x3p,
pt.p_total_x3pa,
pt.p_total_x2p,
pt.p_total_x2pa,
pt.p_total_ft,
pt.p_total_fta,
pt.p_total_orb,
pt.p_total_drb,
pt.p_total_rb,
pt.p_total_ast,
pt.p_total_stl,
pt.p_total_blk,
pt.p_total_tov,
pt.p_total_pts
From Player_Per100 p
Left Join Player_Shooting s
On  p.player_id = s.player_id
And p.season    = s.season
And p.team_id   = s.team_id
Left Join Player_Totals pt
On  p.player_id = pt.player_id
And p.season    = pt.season
And p.team_id   = pt.team_id
Left Join Advanced a
On  pt.player_id = a.player_id
And pt.season    = a.season
And pt.team_id   = a.team_id;

/*Create View for Team Stats*/

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
tt.total_2pm,
tt.total_2pa,
tt.total_2p_scored,
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

