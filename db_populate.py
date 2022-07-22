# Module Imports
import mariadb
import sys
import os
from dotenv import load_dotenv

load_dotenv()

# Connect to MariaDB Platform
try:
    print(os.getenv("DB_PASSWORD"))
    conn = mariadb.connect(
        user="vyeso",
        password=os.getenv("DB_PASSWORD"),
        host="localhost",
        port=3306,
        database="spotify"

    )
    print("connected!")
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()
print(cur)
