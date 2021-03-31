echo "numThreads,real,user,sys"; \
for numThreads in `seq 1 64`; do \
  echo -n $numThreads,; \
  /usr/bin/time --format="%e,%U,%S" taskset -c 0,1,2,3 ./experimentIO.out $numThreads; \
done