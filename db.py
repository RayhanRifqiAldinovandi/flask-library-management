import psycopg2


def db_connection():
    conn = psycopg2.connect(
        host='localhost',
        port=5432,
        dbname='PDTDB',
        user='postgres',
        password='warmachine200'
    )
    return conn
