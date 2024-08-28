# Install the Development Tools package group including GNU Compiler Collection (GCC)
# , GNU Debugger (GDB), and other development tools:
sudo yum group install "Development Tools"
gcc -version

# Install the LLVM-based toolchain including the clang compiler and lldb debugger
sudo yum install llvm-toolset

# Optional: For Fortran dependencies, install the GNU Fortran compiler:
sudo yum install gcc-gfortran

gvim hello.cpp
----
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
  cout << "Hello, World!" << endl;
  return 0;
}
----

g++ hello.cpp -o hello
./hello


gvim Makefile
----
all : hello

hello : hello.o
	gcc -o hello hello.o 

helo.o : hello.c
	gcc -c hello.c

clean :
	rm hello *.o
----

make
./hello