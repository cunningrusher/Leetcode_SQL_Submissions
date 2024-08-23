Select player_id, event_date as first_login
From(Select player_id, event_date,RANK() Over (Partition by player_id order by event_date asc) as rn
From Activity) A
where rn=1
