=How To Use?=
* Compile given source with javac.exe
* Call the program with path argument on command line
* Follow given instructions on the program ui to go

=Additional Info On Source=
* Turn test mode on by setting TEST_MODE=true on Test.java before compilation
* Test mode prints initially loaded investments before program asks for commands. It also loads test investments parsed from the test string.

=Filesystem Save Format=
* Investments are saved and loaded from given path argument in this format:
:TYPE:-:SYMBOL:-:NAME:-:QUANTITY:-:PRICE:-:BOOKVALUE:


=!Assumptions!=
* File format is not enforced stricly, as there's only one recommended sample format.
* Implemented an easier format to increase parsing speed.