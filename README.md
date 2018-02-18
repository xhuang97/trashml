# trashml

# find out the port cloud_sql is listening
sudo lsof -i -P -n | grep LISTEN

# connect to the port with psql and user root
psql -h 127.0.0.1 -p 5678 -d trashml -U root
 
