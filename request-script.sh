TIMES=5
for i in $(eval echo "{1..$TIMES}")
do
    siege -c 3 -r 10 http://localhost:8080/
    siege -c 3 -r 50 http://localhost:8080/io_task
    siege -c 5 -r 50 http://localhost:8080/cpu_task
    siege -c 5 -r 30 http://localhost:8080/random_sleep
    siege -c 4 -r 10 http://localhost:8080/random_status
    siege -c 4 -r 30 http://localhost:8080/chain
    siege -c 3 -r 10 http://localhost:8080/error_test
    sleep 5
done

# siege  : -c concurrent count, -r repetition