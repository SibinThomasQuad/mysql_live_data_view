# mysql username
user_name="XXXXXXXXXXXXX"

# mysql password
password="XXXXXXXXXXXXX"

# mysql database name
database="XXXXXXXXXXXXX"

# query run intervel
refresh_time=10

# mysql query file
query_file="dbscript.sql"

run_query()
{
# this is the function to connect to db and execute the sql query
	mysql --host=localhost --user="$user_name" --password="$password" "$database"  -e "source $query_file"
}

# run in fixed interval
while :
do 
   run_query 
   sleep "$refresh_time"
   clear
done
