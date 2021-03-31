echo "numThreads,real,user,sys"; \
dim=1000
for numThreads in `seq 1 16`; do \
  echo -n $numThreads,; \
  /usr/bin/time --format="%e,%U,%S" taskset -c 0,1,2,3 ./experimentCPU.out $dim $dim $dim $dim $numThreads; \
done