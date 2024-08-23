Select player_id, device_id
From(Select player_id, device_id,
       RANK() Over (partition by player_id order by event_date asc) as rn
From Activity) A
where rn=1