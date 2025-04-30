rem random password generator
rem ascii table https://www.ascii-code.com/
rem variable legnth
rem start with letter
rem include letters, caps, numbers, special characters
rem special characters !@#$%^&*()_-+=[]{}\|~`,.<>/?;:'"
rem ASCII 33 to 126
rem exclude 1, i, , 0 or o because of simularity

input "How many characters? ",n
dim pchr(n)
chrnum=0
for x=0 to n
calcrnd:
    randomize
    chrnum=int(rnd()*(126-33+1))+33
    if x=0 then
        if chrnum<97 or chrnum>123 then
            goto calcrnd
        end if
    end if
    if chrnum<33 or chrnum>126 or chrnum=49 or chrnum=48 or chrnum=73 or chrnum=79 or chrnum=105 or chrnum=111 then
        goto calcrnd
    end if
    if x>0 then
        if (chrnum=pchr(x-1)) then
            goto calcrnd
        end if
    end if
    pchr(x)=chrnum
next x

rem print the password
pswrd$=""
for x=0 to n
    pswrd$=pswrd$+chr$(pchr(x))
next x
print pswrd$
