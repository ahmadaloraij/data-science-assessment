Select
it.investor_id
s.sector_name,
Round(100.0*it.no_of_shares/ SUM(it.no_of_shares) OVER (PARITTION BY it.investor_id
), AS share_percentage
From INVESTOR_TRANSACTION IT
Join sectors s
ON it.sector_id=s.sector_id
Order BY it.investor_id,share percentage DESC;
python main.py
