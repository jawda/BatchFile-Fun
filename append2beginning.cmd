setlocal
copy Joe.txt temp.txt
type Awesome.txt >> temp.txt
del Awesome.txt
ren temp.txt Awesome.txt
del temp.txt
endlocal