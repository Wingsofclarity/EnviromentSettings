::TABULA POJECT
set "THESIS_HOME=D:\examensarbete"
set "TABULA_HOME=%THESIS_HOME%/tabula-java"
set "TABULA_JAR=%TABULA_HOME%/target/tabula-1.0.2-SNAPSHOT-jar-with-dependencies.jar"
set "RUN_TAB=java -jar %TABULA_JAR% %THESIS_HOME%\testpdfs"

doskey tabula= java -jar %TABULA_JAR% ./$* -j
doskey tabula2= %RUN_TABULA%/$*
doskey test_tox= %RUN_TAB%\ntp\slim_tox084_508.pdf -j --guess
doskey test_lattice=%RUN_TAB%\simple_table.pdf -j -guess
doskey test_stream=%RUN_TAB%\stream_simple_table.pdf -j --guess
doskey test_findme= %RUN_TAB%\findme.pdf -j --guess

doskey topdf= cd D:/examensarbete/testpdfs
doskey totab= cd D:/examensarbete/tabula-java

set "NFA_HOME=%THESIS_HOME%/tabula-nfa"
set "NFA_JAR=%NFA_HOME%/target/tabula-1.0.2-jar-with-dependencies.jar"
set "RUN_NFA=java -jar %NFA_JAR% %THESIS_HOME%\testpdfs"

doskey nfa= java -jar %NFA_JAR% ./$* -j
doskey nfa2= %RUN_NFA%/$*
doskey test_tox= %RUN_NFA%\ntp\slim_tox084_508.pdf -j --guess
doskey test_lattice=%RUN_NFA%\simple_table.pdf -j -guess
doskey test_stream=%RUN_NFA%\stream_simple_table.pdf -j --guess
doskey test_findme= %RUN_NFA%\findme.pdf -j --guess

cd D:/examensarbete/tabula-nfa

doskey tonfa= cd D:/examensarbete/tabula-nfa
