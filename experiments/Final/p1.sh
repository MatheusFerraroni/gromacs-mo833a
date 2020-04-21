# rm perf.data
# rm result1.txt
# rm result2.txt
# rm result3.txt
# rm result4.txt
# rm result_do_force1.txt
# rm result_do_force2.txt
# rm result_do_force3.txt
# rm result_do_force4.txt
# rm result_report_1.txt
# rm result_report_2.txt
# rm result_report_3.txt
# rm result_report_4.txt
# rm callgrind.out.*


# perf record ../../build/bin/gmx mdrun -v -deffnm em
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n > result1.txt
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n | grep "do_force "> result_do_force1.txt
# perf report | grep gmx > result_report_1.txt
# mv perf.data perf1.data

# rm perf.data
# perf record -g ../../build/bin/gmx mdrun -v -deffnm em
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n > result2.txt
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n | grep "do_force "> result_do_force2.txt
# perf report | grep gmx > result_report_2.txt
# mv perf.data perf2.data




# rm perf.data
# perf record ../../build/bin/gmx mdrun -v -nt 1 -deffnm em
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n > result3.txt
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n | grep "do_force "> result_do_force3.txt
# perf report | grep gmx > result_report_3.txt
# mv perf.data perf3.data

# rm perf.data
# perf record -g ../../build/bin/gmx mdrun -v -nt 1 -deffnm em
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n > result4.txt
# perf script -f | cut -d: -f3 | sort | uniq -c | sort -n | grep "do_force "> result_do_force4.txt
# perf report | grep gmx > result_report_4.txt
# mv perf.data perf4.data




# valgrind --tool=callgrind ../../build/bin/gmx mdrun -v -deffnm em
# kcachegrind



# valgrind --tool=callgrind ../../build/bin/gmx mdrun -v -nt 1 -deffnm em
# kcachegrind