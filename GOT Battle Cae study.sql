Script:
-- Create the 'king' table
CREATE TABLE king (
    k_no INT PRIMARY KEY,
    king VARCHAR(50),
    house VARCHAR(50)
);

-- Create the 'battle' table
CREATE TABLE battle (
    battle_number INT PRIMARY KEY,
    name VARCHAR(100),
    attacker_king INT,
    defender_king INT,
    attacker_outcome INT,
    region VARCHAR(50),
    FOREIGN KEY (attacker_king) REFERENCES king(k_no),
    FOREIGN KEY (defender_king) REFERENCES king(k_no)
);

delete from king;
INSERT INTO king (k_no, king, house) VALUES (1, 'Robb Stark', 'House Stark');
INSERT INTO king (k_no, king, house) VALUES (2, 'Joffrey Baratheon', 'House Lannister');
INSERT INTO king (k_no, king, house) VALUES (3, 'Stannis Baratheon', 'House Baratheon');
INSERT INTO king (k_no, king, house) VALUES(4, 'Balon Greyjoy', 'House Greyjoy');
INSERT INTO king (k_no, king, house) VALUES (5, 'Mace Tyrell', 'House Tyrell');
INSERT INTO king (k_no, king, house) VALUES (6, 'Doran Martell', 'House Martell');

delete from battle;
-- Insert data into the 'battle' table
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES (1, 'Battle of Oxcross', 1, 2, 1, 'The North');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(2, 'Battle of Blackwater', 3, 4, 0, 'The North');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(3, 'Battle of the Fords', 1, 5, 1, 'The Reach');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(4, 'Battle of the Green Fork', 2, 6, 0, 'The Reach');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(5, 'Battle of the Ruby Ford', 1, 3, 1, 'The Riverlands');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(6, 'Battle of the Golden Tooth', 2, 1, 0, 'The North');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(7, 'Battle of Riverrun', 3, 4, 1, 'The Riverlands');
INSERT INTO battle (battle_number, name, attacker_king, defender_king, attacker_outcome, region) VALUES(8, 'Battle of Riverrun', 1, 3, 0, 'The Riverlands');
--for each region find house which has won maximum no of battles. display region, house and no of wins
select * from battle;
select * from king;

---------------------------

--For each region found House which has won maximum number of battle by region,House ,No of win
With Result as(
Select Name,  region,
case Attacker_outcome
when 1 then Attacker_king
when 0 Then defender_king
End as Winner,
King as Winner_king,
House as winning_House
from battle left Join king on( (case Attacker_outcome
when 1 then Attacker_king
when 0 Then defender_king
End)=K_NO)
),

Final as(
Select region,
winning_House, count (*) as No_Win,

Dense_Rank()Over (partition by Region order by count(winning_House)desc) as RN
from result 
Group by region,winning_House
)

Select* From Final
where RN=1



