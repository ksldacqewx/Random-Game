#!/bin/bash
echo -en "
 
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
A
B
C
D
E
F
G
H
I
J
K
L
M
N
O
P
Q
R
S
T
U
V
W
X
Y
Z
0
1
2
3
4
5
6
7
8
9
-
_
+
=
{
}
[
]
|
\
:
;
\"
'
<
>
.
?
*
/
~
\`
(
)
?" > "chars"
x="0"
i="0"
text(){
textlength="$(( RANDOM % 256 + 1 ))"
while [ "$i" -lt "$textlength" ];do
echo -n "$(shuf chars -n 1)"
i="$(( i + 1 ))"
done
i="0"
textlength="0"
echo
echo
}

input(){
inputtextlength="$((RANDOM % 25 + 1))"
while [ "$x" -lt "$inputtextlength" ];do
(( x+=1 ))
textin="${textin}$(shuf chars -n 1)"
done
x=0
read -e -p "${textin}" -n 256 -r input
textin=""
}



while true;do
text
input
done
