Command line used to find this crash:

/home/kansx/Fuzz/AFLplusplus/afl-fuzz -i /home/kansx/Fuzz/APISpecFuzz/MUSL124/C_math/Cpps/modfl/in -o /home/kansx/Fuzz/APISpecFuzz/MUSL124/C_math/Cpps/modfl/in /home/kansx/Fuzz/APISpecFuzz/MUSL124/C_math/Cpps/modfl/modfl_harness

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please post
to https://github.com/AFLplusplus/AFLplusplus/issues/286 once the issues
 are fixed :)

