::TABULA POJECT
set "THESIS_HOME=D:\examensarbete"
set "TABULA_HOME=%THESIS_HOME%/tabula-java"
set "TABULA_JAR=%TABULA_HOME%/target/tabula-1.0.2-SNAPSHOT-jar-with-dependencies.jar"
set "RUN_TAB=java -jar %TABULA_JAR% %THESIS_HOME%\testpdfs"

doskey tabula= %RUN_TAB% $*
doskey test_tox= %RUN_TAB%\ntp\slim_tox084_508.pdf --guess
doskey test_lattice=%RUN_TAB%\simple_table.pdf --lattice --guess
doskey test_stream=%RUN_TAB%\stream_simple_table.pdf --stream --guess
doskey test_test= %RUN_TAB%\simple_table.pdf -j --guess
