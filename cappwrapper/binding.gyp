{
  "targets": [
    {
      "target_name": "standalone",
      "type": "executable",
      "sources": [ "../capp/prime_sieve.c", "main.cpp"],
      "cflags": ["-Wall", "-std=c++11"],
      "include_dirs" : ["../capp"]
    }
  ]
}