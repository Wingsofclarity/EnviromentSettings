@echo off
call ./cmdtobash
::cd /d D:/
call ./java
call ./tabula_project

::Application Mapping
doskey gvim = START d:/gvim
doskey yed = START d:Programs/yEd/yEd
