from sqlalchemy import create_engine
from sqlalchemy.engine.base import Engine
import pandas as pd

def pd_to_sql(df:pd.DataFrame , table_name:str, engine: Engine):
    df.to_sql(table_name, engine, if_exists='replace', index=False)
    return None

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')

df = pd.read_csv('https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/yellow_tripdata_2021-06.csv.gz')
location_df = pd.read_csv('taxi+_zone_lookup.csv')


df[['tpep_pickup_datetime','tpep_dropoff_datetime']] = df[['tpep_pickup_datetime','tpep_dropoff_datetime']].apply(pd.to_datetime)
pd_to_sql(df, 'yellow_tripdata_2019_01', engine)
pd_to_sql(location_df, 'taxi_zone_lookup', engine)



