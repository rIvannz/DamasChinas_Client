˜j
`C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Utilities\Validator.cs
	namespace 	
DamasChinas_Server
 
. 

Utilidades '
{ 
internal 
static 
class 
	Validator #
{ 
private		 
const		 
int		 
NombreMinLength		 )
=		* +
$num		, -
;		- .
private

 
const

 
int

 
NombreMaxLength

 )
=

* +
$num

, .
;

. /
private 
const 
int 
UsernameMinLength +
=, -
$num. /
;/ 0
private 
const 
int 
UsernameMaxLength +
=, -
$num. 0
;0 1
private 
const 
int 
PasswordMinLength +
=, -
$num. /
;/ 0
private 
const 
int 
EmailMaxLength (
=) *
$num+ .
;. /
private 
static 
readonly 
Regex  %
	NameRegex& /
=0 1
new2 5
Regex6 ;
(; <
$str< U
,U V
RegexOptionsW c
.c d
Compiledd l
)l m
;m n
private 
static 
readonly 
Regex  %
UsernameRegex& 3
=4 5
new6 9
Regex: ?
(? @
$str@ R
,R S
RegexOptionsT `
.` a
Compileda i
)i j
;j k
private 
static 
readonly 
Regex  %"
PasswordUppercaseRegex& <
== >
new? B
RegexC H
(H I
$strI P
,P Q
RegexOptionsR ^
.^ _
Compiled_ g
)g h
;h i
private 
static 
readonly 
Regex  %"
PasswordLowercaseRegex& <
== >
new? B
RegexC H
(H I
$strI P
,P Q
RegexOptionsR ^
.^ _
Compiled_ g
)g h
;h i
private 
static 
readonly 
Regex  %
PasswordDigitRegex& 8
=9 :
new; >
Regex? D
(D E
$strE L
,L M
RegexOptionsN Z
.Z [
Compiled[ c
)c d
;d e
private 
static 
readonly 
Regex  % 
PasswordSpecialRegex& :
=; <
new= @
RegexA F
(F G
$strG O
,O P
RegexOptionsQ ]
.] ^
Compiled^ f
)f g
;g h
private 
static 
readonly 
Regex  %

EmailRegex& 0
=1 2
new3 6
Regex7 <
(< =
$str= ]
,] ^
RegexOptions_ k
.k l
Compiledl t
)t u
;u v
private 
static 
string 
	Normalize '
(' (
string( .
value/ 4
)4 5
=>6 8
value9 >
?> ?
.? @
Trim@ D
(D E
)E F
;F G
public 
static 
void 
ValidateName '
(' (
string( .
name/ 3
)3 4
{ 	
name 
= 
	Normalize 
( 
name !
)! "
;" #
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
name* .
). /
)/ 0
throw 
new 
ArgumentException +
(+ ,
$str, M
)M N
;N O
if!! 
(!! 
name!! 
.!! 
Length!! 
<!! 
NombreMinLength!! -
||!!. 0
name!!1 5
.!!5 6
Length!!6 <
>!!= >
NombreMaxLength!!? N
)!!N O
throw"" 
new"" 
ArgumentException"" +
(""+ ,
$""", .
$str"". I
{""I J
NombreMinLength""J Y
}""Y Z
$str""Z ]
{""] ^
NombreMaxLength""^ m
}""m n
$str""n z
"""z {
)""{ |
;""| }
if$$ 
($$ 
!$$ 
	NameRegex$$ 
.$$ 
IsMatch$$ "
($$" #
name$$# '
)$$' (
)$$( )
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, V
)%%V W
;%%W X
}&& 	
public(( 
static(( 
void(( 
ValidateUsername(( +
(((+ ,
string((, 2
username((3 ;
)((; <
{)) 	
username** 
=** 
	Normalize**  
(**  !
username**! )
)**) *
;*** +
if,, 
(,, 
string,, 
.,, 
IsNullOrWhiteSpace,, )
(,,) *
username,,* 2
),,2 3
),,3 4
throw-- 
new-- 
ArgumentException-- +
(--+ ,
$str--, X
)--X Y
;--Y Z
if// 
(// 
username// 
.// 
Length// 
<//  !
UsernameMinLength//" 3
||//4 6
username//7 ?
.//? @
Length//@ F
>//G H
UsernameMaxLength//I Z
)//Z [
throw00 
new00 
ArgumentException00 +
(00+ ,
$"00, .
$str00. T
{00T U
UsernameMinLength00U f
}00f g
$str00g j
{00j k
UsernameMaxLength00k |
}00| }
$str	00} â
"
00â ä
)
00ä ã
;
00ã å
if22 
(22 
!22 
UsernameRegex22 
.22 
IsMatch22 &
(22& '
username22' /
)22/ 0
)220 1
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, a
)33a b
;33b c
}44 	
public66 
static66 
void66 
ValidatePassword66 +
(66+ ,
string66, 2
password663 ;
)66; <
{77 	
password88 
=88 
	Normalize88  
(88  !
password88! )
)88) *
;88* +
if:: 
(:: 
string:: 
.:: 
IsNullOrWhiteSpace:: )
(::) *
password::* 2
)::2 3
)::3 4
throw;; 
new;; 
ArgumentException;; +
(;;+ ,
$str;;, Q
);;Q R
;;;R S
if== 
(== 
password== 
.== 
Length== 
<==  !
PasswordMinLength==" 3
)==3 4
throw>> 
new>> 
ArgumentException>> +
(>>+ ,
$">>, .
$str>>. P
{>>P Q
PasswordMinLength>>Q b
}>>b c
$str>>c o
">>o p
)>>p q
;>>q r
if@@ 
(@@ 
!@@ "
PasswordUppercaseRegex@@ '
.@@' (
IsMatch@@( /
(@@/ 0
password@@0 8
)@@8 9
)@@9 :
throwAA 
newAA 
ArgumentExceptionAA +
(AA+ ,
$strAA, d
)AAd e
;AAe f
ifCC 
(CC 
!CC "
PasswordLowercaseRegexCC '
.CC' (
IsMatchCC( /
(CC/ 0
passwordCC0 8
)CC8 9
)CC9 :
throwDD 
newDD 
ArgumentExceptionDD +
(DD+ ,
$strDD, d
)DDd e
;DDe f
ifFF 
(FF 
!FF 
PasswordDigitRegexFF #
.FF# $
IsMatchFF$ +
(FF+ ,
passwordFF, 4
)FF4 5
)FF5 6
throwGG 
newGG 
ArgumentExceptionGG +
(GG+ ,
$strGG, Z
)GGZ [
;GG[ \
ifII 
(II 
!II  
PasswordSpecialRegexII %
.II% &
IsMatchII& -
(II- .
passwordII. 6
)II6 7
)II7 8
throwJJ 
newJJ 
ArgumentExceptionJJ +
(JJ+ ,
$strJJ, e
)JJe f
;JJf g
}KK 	
publicMM 
staticMM 
voidMM 
ValidateEmailMM (
(MM( )
stringMM) /
emailMM0 5
)MM5 6
{NN 	
emailOO 
=OO 
	NormalizeOO 
(OO 
emailOO #
)OO# $
;OO$ %
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrWhiteSpaceQQ )
(QQ) *
emailQQ* /
)QQ/ 0
)QQ0 1
throwRR 
newRR 
ArgumentExceptionRR +
(RR+ ,
$strRR, M
)RRM N
;RRN O
ifTT 
(TT 
emailTT 
.TT 
LengthTT 
>TT 
EmailMaxLengthTT -
)TT- .
throwUU 
newUU 
ArgumentExceptionUU +
(UU+ ,
$strUU, K
)UUK L
;UUL M
ifWW 
(WW 
!WW 

EmailRegexWW 
.WW 
IsMatchWW #
(WW# $
emailWW$ )
)WW) *
)WW* +
throwXX 
newXX 
ArgumentExceptionXX +
(XX+ ,
$strXX, R
)XXR S
;XXS T
}YY 	
public[[ 
static[[ 
void[[ 
ValidateUserDto[[ *
([[* +
UserDto[[+ 2
userDto[[3 :
)[[: ;
{\\ 	
if]] 
(]] 
userDto]] 
==]] 
null]] 
)]]  
throw^^ 
new^^ !
ArgumentNullException^^ /
(^^/ 0
$str^^0 V
)^^V W
;^^W X
userDto`` 
.`` 
Name`` 
=`` 
	Normalize`` $
(``$ %
userDto``% ,
.``, -
Name``- 1
)``1 2
;``2 3
userDtoaa 
.aa 
LastNameaa 
=aa 
	Normalizeaa (
(aa( )
userDtoaa) 0
.aa0 1
LastNameaa1 9
)aa9 :
;aa: ;
userDtobb 
.bb 
Emailbb 
=bb 
	Normalizebb %
(bb% &
userDtobb& -
.bb- .
Emailbb. 3
)bb3 4
;bb4 5
userDtocc 
.cc 
Usernamecc 
=cc 
	Normalizecc (
(cc( )
userDtocc) 0
.cc0 1
Usernamecc1 9
)cc9 :
;cc: ;
ValidateNameee 
(ee 
userDtoee  
.ee  !
Nameee! %
)ee% &
;ee& '
ValidateNameff 
(ff 
userDtoff  
.ff  !
LastNameff! )
)ff) *
;ff* +
ValidateEmailgg 
(gg 
userDtogg !
.gg! "
Emailgg" '
)gg' (
;gg( )
ValidateUsernamehh 
(hh 
userDtohh $
.hh$ %
Usernamehh% -
)hh- .
;hh. /
}ii 	
publickk 
statickk 
voidkk  
ValidateLoginRequestkk /
(kk/ 0
LoginRequestkk0 <
loginRequestkk= I
)kkI J
{ll 	
ifmm 
(mm 
loginRequestmm 
==mm 
nullmm  $
)mm$ %
thrownn 
newnn !
ArgumentNullExceptionnn /
(nn/ 0
$strnn0 [
)nn[ \
;nn\ ]
loginRequestpp 
.pp 
Usernamepp !
=pp" #
	Normalizepp$ -
(pp- .
loginRequestpp. :
.pp: ;
Usernamepp; C
)ppC D
;ppD E
loginRequestqq 
.qq 
Passwordqq !
=qq" #
	Normalizeqq$ -
(qq- .
loginRequestqq. :
.qq: ;
Passwordqq; C
)qqC D
;qqD E
ifss 
(ss 
stringss 
.ss 
IsNullOrWhiteSpacess )
(ss) *
loginRequestss* 6
.ss6 7
Usernamess7 ?
)ss? @
)ss@ A
throwtt 
newtt 
ArgumentExceptiontt +
(tt+ ,
$strtt, O
)ttO P
;ttP Q
ifvv 
(vv 
loginRequestvv 
.vv 
Usernamevv %
.vv% &
Containsvv& .
(vv. /
$strvv/ 2
)vv2 3
)vv3 4
ValidateEmailww 
(ww 
loginRequestww *
.ww* +
Usernameww+ 3
)ww3 4
;ww4 5
elsexx 
ValidateUsernameyy  
(yy  !
loginRequestyy! -
.yy- .
Usernameyy. 6
)yy6 7
;yy7 8
if{{ 
({{ 
string{{ 
.{{ 
IsNullOrWhiteSpace{{ )
({{) *
loginRequest{{* 6
.{{6 7
Password{{7 ?
){{? @
){{@ A
throw|| 
new|| 
ArgumentException|| +
(||+ ,
$str||, I
)||I J
;||J K
}}} 	
}~~ 
} Ü
gC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Utilities\DbContextFactory.cs
	namespace 	
DamasChinas_Server
 
. 

Utilidades '
{ 
public 
static 
class 
DbContextFactory %
{ 
private 	
static
 
Func 
<  
damas_chinasEntities *
>* +
_factory, 4
=5 6
(7 8
)8 9
=>: <
new= @ 
damas_chinasEntitiesA U
(U V
)V W
;W X
public

 
static

	 
void

 
	Configure

 
(

 
Func

 #
<

# $ 
damas_chinasEntities

$ 8
>

8 9
factory

: A
)

A B
{ 
if 
( 
factory 
== 
null 
) 
{ 
throw 	
new
 !
ArgumentNullException #
(# $
nameof$ *
(* +
factory+ 2
)2 3
)3 4
;4 5
} 
Interlocked 
. 
Exchange 
( 
ref 
_factory $
,$ %
factory& -
)- .
;. /
} 
public 
static	 
void 
Reset 
( 
) 
{ 
Interlocked 
. 
Exchange 
( 
ref 
_factory $
,$ %
(& '
)' (
=>) +
new, / 
damas_chinasEntities0 D
(D E
)E F
)F G
;G H
} 
public 
static	  
damas_chinasEntities $
Create% +
(+ ,
), -
{ 
return 	
_factory
 
( 
) 
; 
} 
} 
} †&
\C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Utilities\Email.cs
	namespace 	
DamasChinas_Server
 
. 

Utilidades '
{ 
internal 
static 
class 
Email 
{		 
private

 
const

 
string

 
SmtpHost

 %
=

& '
$str

( 8
;

8 9
private 
const 
int 
SmtpPort "
=# $
$num% (
;( )
private 
const 
bool 
	EnableSsl $
=% &
true' +
;+ ,
private 
const 
string 
SenderEmail (
=) *
$str+ D
;D E
private 
const 
string 
SenderPassword +
=, -
$str. C
;C D
private 
const 
string 
ErrorSendingMail -
=. /
$str0 J
;J K
private 
const 
string 
WelcomeSubject +
=, -
$str. I
;I J
private 
const 
string 
WelcomeBodyTemplate 0
=1 2
$str 
+  !
$str +
+, -
$str f
+g h
$str 7
+8 9
$str 1
;1 2
public 
static 
async 
Task  
<  !
bool! %
>% &
	SendAsync' 0
(0 1
string1 7
receiver8 @
,@ A
stringB H
subjectI P
,P Q
stringR X
bodyY ]
,] ^
bool_ c
htmld h
=i j
truek o
)o p
{ 	
try 
{   
using!! 
(!! 

SmtpClient!! !
smtp!!" &
=!!' (
new!!) ,

SmtpClient!!- 7
(!!7 8
SmtpHost!!8 @
)!!@ A
{"" 
Port## 
=## 
SmtpPort## #
,### $
Credentials$$ 
=$$  !
new$$" %
NetworkCredential$$& 7
($$7 8
SenderEmail$$8 C
,$$C D
SenderPassword$$E S
)$$S T
,$$T U
	EnableSsl%% 
=%% 
	EnableSsl%%  )
}&& 
)&& 
using'' 
('' 
MailMessage'' "
message''# *
=''+ ,
new''- 0
MailMessage''1 <
(''< =
)''= >
)''> ?
{(( 
message)) 
.)) 
From))  
=))! "
new))# &
MailAddress))' 2
())2 3
SenderEmail))3 >
)))> ?
;))? @
message** 
.** 
To** 
.** 
Add** "
(**" #
receiver**# +
)**+ ,
;**, -
message++ 
.++ 
Subject++ #
=++$ %
subject++& -
;++- .
message,, 
.,, 
Body,,  
=,,! "
body,,# '
;,,' (
message-- 
.-- 

IsBodyHtml-- &
=--' (
html--) -
;--- .
await// 
smtp// 
.// 
SendMailAsync// ,
(//, -
message//- 4
)//4 5
;//5 6
}00 
return22 
true22 
;22 
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
throw66 
new66 
	Exception66 #
(66# $
ErrorSendingMail66$ 4
+665 6
ex667 9
.669 :
Message66: A
,66A B
ex66C E
)66E F
;66F G
}77 
}88 	
public== 
static== 
async== 
Task==  !
EnviarBienvenidaAsync==! 6
(==6 7
UserInfo==7 ?
user==@ D
)==D E
{>> 	
string?? 
subject?? 
=?? 
WelcomeSubject?? +
;??+ ,
string@@ 
body@@ 
=@@ 
string@@  
.@@  !
Format@@! '
(@@' (
WelcomeBodyTemplate@@( ;
,@@; <
user@@= A
.@@A B
FullName@@B J
,@@J K
user@@L P
.@@P Q
Username@@Q Y
)@@Y Z
;@@Z [
awaitBB 
	SendAsyncBB 
(BB 
userBB  
.BB  !
EmailBB! &
,BB& '
subjectBB( /
,BB/ 0
bodyBB1 5
,BB5 6
htmlBB7 ;
:BB; <
trueBB= A
)BBA B
;BBB C
}CC 	
}DD 
}EE û
dC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\SessionManager.cs
	namespace 	
DamasChinas_Server
 
. 
Services %
{ 
public 
static 
class 
SessionManager #
{ 
private		 	
static		
 
readonly		  
ConcurrentDictionary		 .
<		. /
string		/ 5
,		5 6
ISessionCallback		7 G
>		G H
ActiveSessions		I W
=		X Y
new

  
ConcurrentDictionary

 
<

 
string

 "
,

" #
ISessionCallback

$ 4
>

4 5
(

5 6
)

6 7
;

7 8
public 
static	 
void 

AddSession 
(  
string  &
username' /
,/ 0
ISessionCallback1 A
callbackB J
)J K
{ 
ActiveSessions 
[ 
username 
] 
= 
callback &
;& '
} 
public 
static 
void "
RemoveSession# 0
(0 1
string1 7
nickname8 @
)@ A
{ 
ActiveSessions &
.& '
	TryRemove' 0
(0 1
nickname1 9
,9 :
out; >
_? @
)@ A
;A B
} 
public 
static 
ISessionCallback .

GetSession/ 9
(9 :
string: @
nicknameA I
)I J
{ 
ActiveSessions &
.& '
TryGetValue' 2
(2 3
nickname3 ;
,; <
out= @
varA D
callbackE M
)M N
;N O
return 
callback '
;' (
} 
public 
static 
bool "
IsOnline# +
(+ ,
string, 2
nickname3 ;
); <
{ 
return 
ActiveSessions -
.- .
ContainsKey. 9
(9 :
nickname: B
)B C
;C D
} 
public!! 
static!! 
void!! "!
UpdateSessionUsername!!# 8
(!!8 9
string!!9 ?
currentUsername!!@ O
,!!O P
string!!Q W
newUsername!!X c
)!!c d
{"" 
if## 
(## 
string## "
.##" #
IsNullOrWhiteSpace### 5
(##5 6
currentUsername##6 E
)##E F
||##G I
string##J P
.##P Q
IsNullOrWhiteSpace##Q c
(##c d
newUsername##d o
)##o p
||##q s
currentUsername$$  /
.$$/ 0
Equals$$0 6
($$6 7
newUsername$$7 B
)$$B C
)$$C D
{%% 
return&&  &
;&&& '
}'' 
if)) 
()) 
ActiveSessions)) *
.))* +
	TryRemove))+ 4
())4 5
currentUsername))5 D
,))D E
out))F I
var))J M
callback))N V
)))V W
)))W X
{** 
ActiveSessions++  .
[++. /
newUsername++/ :
]++: ;
=++< =
callback++> F
;++F G
},, 
}-- 
}.. 	
}// Ä	
\C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\AccountMgr.cs
	namespace 	
DamasChinas_Server
 
{ 
[ 
DataContract 
] 
public 
class 
UserInfo 
{ 
[ 

DataMember 
] 
public		 
int			 
IdUser		 
{		 
get		 
;		 
set		 
;		 
}		  !
[ 

DataMember 
] 
public 
string	 
Username 
{ 
get 
; 
set  #
;# $
}% &
[ 

DataMember 
] 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
[ 

DataMember 
] 
public 
string	 
FullName 
{ 
get 
; 
set  #
;# $
}% &
} 
} πA
cC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\SingInService.cs
	namespace 	
DamasChinas_Server
 
{ 
public 

class 
SingInService 
:  
ISingInService! /
{ 
private 
readonly 
RepositoryUsers (
_repository) 4
;4 5
public 
SingInService 
( 
) 
{ 	
_repository 
= 
new 
RepositoryUsers -
(- .
). /
;/ 0
} 	
public 
OperationResult 

CreateUser )
() *
UserDto* 1
userDto2 9
)9 :
{ 	
var 
result 
= 
new 
OperationResult ,
(, -
)- .
;. /
try 
{ 
var 
user 
= 
_repository &
.& '

CreateUser' 1
(1 2
userDto2 9
)9 :
;: ;
result   
.   
Success   
=    
true  ! %
;  % &
result!! 
.!! 
Code!! 
=!! 
MessageCode!! )
.!!) *
Success!!* 1
;!!1 2
result"" 
."" 
TechnicalDetail"" &
=""' (
$str"") E
;""E F
SendWelcomeEmail$$  
($$  !
MapToUserInfo$$! .
($$. /
user$$/ 3
,$$3 4
userDto$$5 <
)$$< =
)$$= >
;$$> ?
System&& 
.&& 
Diagnostics&& "
.&&" #
Debug&&# (
.&&( )
	WriteLine&&) 2
(&&2 3
$str&&3 W
)&&W X
;&&X Y
}'' 
catch(( 
((( 
ArgumentException(( $
ex((% '
)((' (
{)) 
result** 
.** 
Success** 
=**  
false**! &
;**& '
result++ 
.++ 
Code++ 
=++ 
MessageCode++ )
.++) *
UserDuplicateEmail++* <
;++< =
result,, 
.,, 
TechnicalDetail,, &
=,,' (
ex,,) +
.,,+ ,
Message,,, 3
;,,3 4
System-- 
.-- 
Diagnostics-- "
.--" #
Debug--# (
.--( )
	WriteLine--) 2
(--2 3
$"--3 5
$str--5 b
{--b c
ex--c e
.--e f
Message--f m
}--m n
"--n o
)--o p
;--p q
}.. 
catch// 
(// 
SqlException// 
ex//  "
)//" #
{00 
result11 
.11 
Success11 
=11  
false11! &
;11& '
result22 
.22 
Code22 
=22 
MessageCode22 )
.22) *
ServerUnavailable22* ;
;22; <
result33 
.33 
TechnicalDetail33 &
=33' (
ex33) +
.33+ ,
Message33, 3
;333 4
System44 
.44 
Diagnostics44 "
.44" #
Debug44# (
.44( )
	WriteLine44) 2
(442 3
$"443 5
$str445 m
{44m n
ex44n p
.44p q
Message44q x
}44x y
"44y z
)44z {
;44{ |
}55 
catch66 
(66 %
InvalidOperationException66 ,
ex66- /
)66/ 0
{77 
result88 
.88 
Success88 
=88  
false88! &
;88& '
result99 
.99 
Code99 
=99 
MessageCode99 )
.99) *
UnknownError99* 6
;996 7
result:: 
.:: 
TechnicalDetail:: &
=::' (
ex::) +
.::+ ,
Message::, 3
;::3 4
System;; 
.;; 
Diagnostics;; "
.;;" #
Debug;;# (
.;;( )
	WriteLine;;) 2
(;;2 3
$";;3 5
$str;;5 d
{;;d e
ex;;e g
.;;g h
Message;;h o
};;o p
";;p q
);;q r
;;;r s
}<< 
catch== 
(== 
	Exception== 
ex== 
)==  
{>> 
result?? 
.?? 
Success?? 
=??  
false??! &
;??& '
result@@ 
.@@ 
Code@@ 
=@@ 
MessageCode@@ )
.@@) *
UnknownError@@* 6
;@@6 7
resultAA 
.AA 
TechnicalDetailAA &
=AA' (
exAA) +
.AA+ ,
MessageAA, 3
;AA3 4
SystemBB 
.BB 
DiagnosticsBB "
.BB" #
DebugBB# (
.BB( )
	WriteLineBB) 2
(BB2 3
$"BB3 5
$strBB5 a
{BBa b
exBBb d
.BBd e
MessageBBe l
}BBl m
"BBm n
)BBn o
;BBo p
}CC 
finallyDD 
{EE 
SystemFF 
.FF 
DiagnosticsFF "
.FF" #
DebugFF# (
.FF( )
	WriteLineFF) 2
(FF2 3
$strFF3 [
)FF[ \
;FF\ ]
}GG 
returnII 
resultII 
;II 
}JJ 	
privateMM 
voidMM 
SendWelcomeEmailMM %
(MM% &
UserInfoMM& .
userMM/ 3
)MM3 4
{NN 	
TaskOO 
.OO 
RunOO 
(OO 
asyncOO 
(OO 
)OO 
=>OO  
{PP 
tryQQ 
{RR 
awaitSS 
EmailSS 
.SS  !
EnviarBienvenidaAsyncSS  5
(SS5 6
userSS6 :
)SS: ;
.SS; <
ConfigureAwaitSS< J
(SSJ K
falseSSK P
)SSP Q
;SSQ R
SystemTT 
.TT 
DiagnosticsTT &
.TT& '
DebugTT' ,
.TT, -
	WriteLineTT- 6
(TT6 7
$strTT7 a
)TTa b
;TTb c
}UU 
catchVV 
(VV 
	ExceptionVV  
exVV! #
)VV# $
{WW 
SystemXX 
.XX 
DiagnosticsXX &
.XX& '
DebugXX' ,
.XX, -
	WriteLineXX- 6
(XX6 7
$"XX7 9
$strXX9 _
{XX_ `
exXX` b
.XXb c
MessageXXc j
}XXj k
"XXk l
)XXl m
;XXm n
}YY 
}ZZ 
)ZZ 
;ZZ 
}[[ 	
private^^ 
UserInfo^^ 
MapToUserInfo^^ &
(^^& '
usuarios^^' /
user^^0 4
,^^4 5
UserDto^^6 =
userDto^^> E
)^^E F
{__ 	
var`` 
profile`` 
=`` 
user`` 
.`` 
perfiles`` '
.``' (
FirstOrDefault``( 6
(``6 7
)``7 8
;``8 9
returnbb 
newbb 
UserInfobb 
{cc 
IdUserdd 
=dd 
userdd 
.dd 

id_usuariodd (
,dd( )
Usernameee 
=ee 
profileee "
?ee" #
.ee# $
usernameee$ ,
??ee- /
userDtoee0 7
.ee7 8
Usernameee8 @
,ee@ A
Emailff 
=ff 
userff 
.ff 
correoff #
,ff# $
FullNamegg 
=gg 
profilegg "
!=gg# %
nullgg& *
?hh 
$"hh 
{hh 
profilehh  
.hh  !
nombrehh! '
}hh' (
$strhh( )
{hh) *
profilehh* 1
.hh1 2
apellido_maternohh2 B
}hhB C
"hhC D
:ii 
$"ii 
{ii 
userDtoii  
.ii  !
Nameii! %
}ii% &
$strii& '
{ii' (
userDtoii( /
.ii/ 0
LastNameii0 8
}ii8 9
"ii9 :
}jj 
;jj 
}kk 	
}ll 
}mm Ω
bC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\LoginService.cs
	namespace 	
DamasChinas_Server
 
{		 
[

 
ServiceBehavior

 
(

 
InstanceContextMode

 %
=

& '
InstanceContextMode

( ;
.

; <

PerSession

< F
,

F G
ConcurrencyMode

H W
=

X Y
ConcurrencyMode

Z i
.

i j
	Reentrant

j s
)

s t
]

t u
public 
class 
LoginService 
: 
ILoginService *
{ 
private 	
readonly
 
RepositoryUsers "
_repository# .
;. /
public 
LoginService	 
( 
) 
: 
this 	
(	 

new
 
RepositoryUsers 
( 
) 
)  
{ 
} 
internal 

LoginService 
( 
RepositoryUsers '

repository( 2
)2 3
{ 
_repository 
= 

repository 
?? 
throw $
new% (!
ArgumentNullException) >
(> ?
nameof? E
(E F

repositoryF P
)P Q
)Q R
;R S
} 
public 
void	 
Login 
( 
LoginRequest  
loginRequest! -
)- .
{ 
var 
callback 
= 
OperationContext "
." #
Current# *
.* +
GetCallbackChannel+ =
<= >
ILoginCallback> L
>L M
(M N
)N O
;O P
try 
{ 
var 
profile 
= 
_repository 
. 
Login #
(# $
loginRequest$ 0
)0 1
;1 2
SessionManager!! 
.!! 

AddSession!! 
(!! 
profile!! %
.!!% &
Username!!& .
,!!. /
callback!!0 8
)!!8 9
;!!9 :
callback## 
.## 
OnLoginSuccess## 
(## 
profile## #
)### $
;##$ %
}$$ 
catch%% 
(%% 
	Exception%% 
ex%% 
)%%  
{&& 
callback(( 
.(( 
OnLoginError(( %
(((% &
MessageCode((& 1
.((1 2#
LoginInvalidCredentials((2 I
)((I J
;((J K
})) 
}++ 	
},, 
}-- è
dC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str -
)- .
]. /
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *ô≤
bC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\logic\RepositoryUsers.cs
	namespace		 	
DamasChinas_Server		
 
{

 
public 
class 
RepositoryUsers 
{ 
private 	
readonly
 
Func 
<  
damas_chinasEntities ,
>, -
_contextFactory. =
;= >
public 
RepositoryUsers	 
( 
) 
: 
this 	
(	 

DbContextFactory
 
. 
Create !
)! "
{ 
} 
public 
RepositoryUsers	 
( 
Func 
<  
damas_chinasEntities 2
>2 3
contextFactory4 B
)B C
{ 
_contextFactory 
= 
contextFactory #
??$ &
throw' ,
new- 0!
ArgumentNullException1 F
(F G
nameofG M
(M N
contextFactoryN \
)\ ]
)] ^
;^ _
} 
public 
usuarios	 

CreateUser 
( 
UserDto $
userDto% ,
), -
{ 
	Validator 
. 
ValidateUserDto 
( 
userDto $
)$ %
;% &
return 	
ExecuteInContext
 
( 
db 
=>  
{ 
if 
( 
EntityExists 
< 
usuarios 
> 
( 
db !
,! "
u# $
=>% '
u( )
.) *
correo* 0
==1 3
userDto4 ;
.; <
Email< A
)A B
)B C
{   
throw!! 

new!! %
InvalidOperationException!! (
(!!( )
$str!!) O
)!!O P
;!!P Q
}"" 
if## 
(## 
EntityExists## 
<## 
perfiles## 
>## 
(## 
db## !
,##! "
p### $
=>##% '
p##( )
.##) *
username##* 2
.##2 3
Equals##3 9
(##9 :
userDto##: A
.##A B
Username##B J
,##J K
StringComparison##L \
.##\ ]
OrdinalIgnoreCase##] n
)##n o
)##o p
)##p q
{$$ 
throw%% 

new%% %
InvalidOperationException%% (
(%%( )
$str%%) Y
)%%Y Z
;%%Z [
}&& 
var'' 
nuevoUsuario'' 
='' 
CreateUsuario'' $
(''$ %
db''% '
,''' (
userDto'') 0
)''0 1
;''1 2
CreatePerfil(( 
((( 
db(( 
,(( 
nuevoUsuario(( !
,((! "
userDto((# *
)((* +
;((+ ,
return** 

GetUserWithProfile** 
(** 
db**  
,**  !
nuevoUsuario**" .
.**. /

id_usuario**/ 9
)**9 :
;**: ;
}++ 
)++ 
;++ 
},, 
public.. 
PublicProfile..	 
Login.. 
(.. 
LoginRequest.. )
loginRequest..* 6
)..6 7
{// 
	Validator00 
.00  
ValidateLoginRequest00 !
(00! "
loginRequest00" .
)00. /
;00/ 0
return22 	
ExecuteInContext22
 
(22 
db22 
=>22  
{33 
var44 
user44 
=44 
FindUserForLogin44 
(44  
db44  "
,44" #
loginRequest44$ 0
.440 1
Username441 9
)449 :
;44: ;
if66 
(66 
user66 
==66 
null66 
||66 
user66 
.66 
password_hash66 *
!=66+ -
loginRequest66. :
.66: ;
Password66; C
)66C D
{77 
throw88 

new88 '
UnauthorizedAccessException88 *
(88* +
$str88+ D
)88D E
;88E F
}99 
return:: 

BuildPublicProfile:: 
(:: 
user:: "
)::" #
;::# $
};; 
);; 
;;; 
}<< 
public>> 
PublicProfile>>	 
GetPublicProfile>> '
(>>' (
int>>( +
	idUsuario>>, 5
)>>5 6
{?? 
return@@ 	
ExecuteInContext@@
 
(@@ 
db@@ 
=>@@  
{AA 
varBB 
userBB 
=BB 
GetUserWithProfileBB !
(BB! "
dbBB" $
,BB$ %
	idUsuarioBB& /
)BB/ 0
;BB0 1
returnCC 

BuildPublicProfileCC 
(CC 
userCC "
)CC" #
;CC# $
}DD 
)DD 
;DD 
}EE 
publicGG 
boolGG	 
ChangeUsernameGG 
(GG 
stringGG #
usernameGG$ ,
,GG, -
stringGG. 4
newUsernameGG5 @
)GG@ A
{HH 
	ValidatorII 
.II 
ValidateUsernameII 
(II 
newUsernameII )
)II) *
;II* +
varKK 
currentUsernameKK 
=KK 
usernameKK !
?KK! "
.KK" #
TrimKK# '
(KK' (
)KK( )
;KK) *
ifLL 
(LL 
stringLL 
.LL 
IsNullOrWhiteSpaceLL  
(LL  !
currentUsernameLL! 0
)LL0 1
)LL1 2
{MM 
throwNN 	
newNN
 
ArgumentExceptionNN 
(NN  
$strNN  L
,NNL M
nameofNNN T
(NNT U
usernameNNU ]
)NN] ^
)NN^ _
;NN_ `
}OO 
returnPP 	
ExecuteInContextPP
 
(PP 
dbPP 
=>PP  
{QQ 
ifRR 
(RR 
EntityExistsRR 
<RR 
perfilesRR 
>RR 
(RR 
dbRR !
,RR! "
pRR# $
=>RR% '
pRR( )
.RR) *
usernameRR* 2
.RR2 3
EqualsRR3 9
(RR9 :
newUsernameRR: E
,RRE F
StringComparisonRRG W
.RRW X
OrdinalIgnoreCaseRRX i
)RRi j
)RRj k
)RRk l
{SS 
throwTT 

newTT %
InvalidOperationExceptionTT (
(TT( )
$strTT) O
)TTO P
;TTP Q
}UU 
varVV 
perfilVV 
=VV 
GetPerfilByUsernameVV $
(VV$ %
dbVV% '
,VV' (
currentUsernameVV) 8
)VV8 9
;VV9 :
perfilXX 

.XX
 
usernameXX 
=XX 
newUsernameXX !
;XX! "
dbYY 
.YY 
EntryYY 
(YY 
perfilYY 
)YY 
.YY 
PropertyYY 
(YY 
pYY 
=>YY  "
pYY# $
.YY$ %
usernameYY% -
)YY- .
.YY. /

IsModifiedYY/ 9
=YY: ;
trueYY< @
;YY@ A
SaveChangesSafelyZZ 
(ZZ 
dbZZ 
)ZZ 
;ZZ 
return\\ 

true\\ 
;\\ 
}]] 
)]] 
;]] 
}^^ 
public`` 
bool`` 
ChangePassword`` "
(``" #
string``# )
username``* 2
,``2 3
string``4 :
newPassword``; F
)``F G
{aa 	
	Validatorbb 
.bb 
ValidatePasswordbb &
(bb& '
newPasswordbb' 2
)bb2 3
;bb3 4
returndd 
ExecuteInContextdd #
(dd# $
dbdd$ &
=>dd' )
{ee 
varff 
usuarioff 
=ff 
(ff 
fromff #
uff$ %
inff& (
dbff) +
.ff+ ,
usuariosff, 4
joingg #
pgg$ %
ingg& (
dbgg) +
.gg+ ,
perfilesgg, 4
ongg5 7
ugg8 9
.gg9 :

id_usuariogg: D
equalsggE K
pggL M
.ggM N

id_usuarioggN X
wherehh $
phh% &
.hh& '
usernamehh' /
.hh/ 0
ToLowerhh0 7
(hh7 8
)hh8 9
==hh: <
usernamehh= E
.hhE F
ToLowerhhF M
(hhM N
)hhN O
selectii %
uii& '
)ii' (
.ii( )
FirstOrDefaultii) 7
(ii7 8
)ii8 9
;ii9 :
ifkk 
(kk 
usuariokk 
==kk 
nullkk #
)kk# $
throwll 
newll %
InvalidOperationExceptionll 7
(ll7 8
$strll8 n
)lln o
;llo p
usuarionn 
.nn 
password_hashnn %
=nn& '
newPasswordnn( 3
;nn3 4
SaveChangesSafelyoo !
(oo! "
dboo" $
)oo$ %
;oo% &
returnpp 
truepp 
;pp 
}qq 
)qq 
;qq 
}rr 	
publicuu 
intuu 
GetUserIdByUsernameuu &
(uu& '
stringuu' -
usernameuu. 6
)uu6 7
{vv 
	Validatorww 
.ww 
ValidateUsernameww 
(ww 
usernameww &
)ww& '
;ww' (
returnyy 	
ExecuteInContextyy
 
(yy 
dbyy 
=>yy  
{zz 
var{{ 
perfil{{ 
={{ 
GetPerfilByUsername{{ $
({{$ %
db{{% '
,{{' (
username{{) 1
,{{1 2
$str{{3 a
){{a b
;{{b c
return|| 

perfil|| 
.|| 

id_usuario|| 
;|| 
}}} 
)}} 
;}} 
}~~ 
private
ÄÄ 	"
damas_chinasEntities
ÄÄ
 
CreateContext
ÄÄ ,
(
ÄÄ, -
)
ÄÄ- .
{
ÅÅ 
return
ÇÇ 	
_contextFactory
ÇÇ
 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 
private
ÖÖ 	
T
ÖÖ
 
ExecuteInContext
ÖÖ 
<
ÖÖ 
T
ÖÖ 
>
ÖÖ 
(
ÖÖ  
Func
ÖÖ  $
<
ÖÖ$ %"
damas_chinasEntities
ÖÖ% 9
,
ÖÖ9 :
T
ÖÖ; <
>
ÖÖ< =
	operation
ÖÖ> G
)
ÖÖG H
{
ÜÜ 
using
áá 
(
áá	 

var
áá
 
db
áá 
=
áá 
CreateContext
áá  
(
áá  !
)
áá! "
)
áá" #
{
àà 
return
ââ 

	operation
ââ 
(
ââ 
db
ââ 
)
ââ 
;
ââ 
}
ää 
}
ãã 
private
çç 	
static
çç
 
usuarios
çç 
FindUserForLogin
çç *
(
çç* +"
damas_chinasEntities
çç+ ?
db
çç@ B
,
ççB C
string
ççD J

credential
ççK U
)
ççU V
{
éé 
return
èè 	
db
èè
 
.
èè 
usuarios
èè 
.
êê 
Include
êê 
(
êê 
u
êê 
=>
êê 
u
êê 
.
êê 
perfiles
êê 
)
êê 
.
ëë 
FirstOrDefault
ëë 
(
ëë 
u
ëë 
=>
ëë 
u
íí 
.
íí 	
correo
íí	 
==
íí 

credential
íí 
||
íí  
u
ìì 
.
ìì 	
perfiles
ìì	 
.
ìì 
Any
ìì 
(
ìì 
p
ìì 
=>
ìì 
p
ìì 
.
ìì 
username
ìì %
==
ìì& (

credential
ìì) 3
)
ìì3 4
)
ìì4 5
;
ìì5 6
}
îî 
private
ññ 	
static
ññ
 
bool
ññ 
EntityExists
ññ "
<
ññ" #
T
ññ# $
>
ññ$ %
(
ññ% &"
damas_chinasEntities
ññ& :
db
ññ; =
,
ññ= >

Expression
ññ? I
<
ññI J
Func
ññJ N
<
ññN O
T
ññO P
,
ññP Q
bool
ññR V
>
ññV W
>
ññW X
	predicate
ññY b
)
ññb c
where
ññd i
T
ññj k
:
ññl m
class
ññn s
{
óó 
return
òò 	
db
òò
 
.
òò 
Set
òò 
<
òò 
T
òò 
>
òò 
(
òò 
)
òò 
.
òò 
Any
òò 
(
òò 
	predicate
òò #
)
òò# $
;
òò$ %
}
ôô 
private
õõ 	
static
õõ
 
T
õõ 
GetEntityOrThrow
õõ #
<
õõ# $
T
õõ$ %
>
õõ% &
(
õõ& '"
damas_chinasEntities
õõ' ;
db
õõ< >
,
õõ> ?

Expression
õõ@ J
<
õõJ K
Func
õõK O
<
õõO P
T
õõP Q
,
õõQ R
bool
õõS W
>
õõW X
>
õõX Y
	predicate
õõZ c
,
õõc d
string
õõe k
errorMessage
õõl x
)
õõx y
where
õõz 
TõõÄ Å
:õõÇ É
classõõÑ â
{
úú 
var
ùù 
entity
ùù 
=
ùù 
db
ùù 
.
ùù 
Set
ùù 
<
ùù 
T
ùù 
>
ùù 
(
ùù 
)
ùù 
.
ùù 
SingleOrDefault
ùù +
(
ùù+ ,
	predicate
ùù, 5
)
ùù5 6
;
ùù6 7
if
ûû 
(
ûû 
entity
ûû 
==
ûû 
null
ûû 
)
ûû 
{
üü 
throw
†† 	
new
††
 '
InvalidOperationException
†† '
(
††' (
errorMessage
††( 4
)
††4 5
;
††5 6
}
°° 
return
¢¢ 	
entity
¢¢
 
;
¢¢ 
}
££ 
private
•• 	
static
••
 
perfiles
•• !
GetPerfilByUsername
•• -
(
••- ."
damas_chinasEntities
••. B
db
••C E
,
••E F
string
••G M
username
••N V
,
••V W
string
••X ^
errorMessage
••_ k
=
••l m
$str••n î
)••î ï
{
¶¶ 
return
ßß 	
GetEntityOrThrow
ßß
 
<
ßß 
perfiles
ßß #
>
ßß# $
(
ßß$ %
db
ßß% '
,
ßß' (
p
®® 
=>
®® 
p
®®	 

.
®®
 
username
®® 
.
®® 
Equals
®® 
(
®® 
username
®® #
,
®®# $
StringComparison
®®% 5
.
®®5 6
OrdinalIgnoreCase
®®6 G
)
®®G H
,
®®H I
errorMessage
©© 
)
©© 
;
©© 
}
™™ 
private
¨¨ 	
static
¨¨
 
usuarios
¨¨  
GetUserWithProfile
¨¨ ,
(
¨¨, -"
damas_chinasEntities
¨¨- A
db
¨¨B D
,
¨¨D E
int
¨¨F I
	idUsuario
¨¨J S
)
¨¨S T
{
≠≠ 
var
ÆÆ 
user
ÆÆ 
=
ÆÆ 
db
ÆÆ 
.
ÆÆ 
usuarios
ÆÆ 
.
ØØ 
Include
ØØ 
(
ØØ 
u
ØØ 
=>
ØØ 
u
ØØ 
.
ØØ 
perfiles
ØØ 
)
ØØ  
.
∞∞ 
SingleOrDefault
∞∞ 
(
∞∞ 
u
∞∞ 
=>
∞∞ 
u
∞∞ 
.
∞∞ 

id_usuario
∞∞ )
==
∞∞* ,
	idUsuario
∞∞- 6
)
∞∞6 7
;
∞∞7 8
if
≤≤ 
(
≤≤ 
user
≤≤ 
==
≤≤ 
null
≤≤ 
)
≤≤ 
{
≥≥ 
throw
¥¥ 	
new
¥¥
 '
InvalidOperationException
¥¥ '
(
¥¥' (
$str
¥¥( Q
)
¥¥Q R
;
¥¥R S
}
µµ 
return
∂∂ 	
user
∂∂
 
;
∂∂ 
}
∑∑ 
private
ππ 	
static
ππ
 
PublicProfile
ππ  
BuildPublicProfile
ππ 1
(
ππ1 2
usuarios
ππ2 :
user
ππ; ?
)
ππ? @
{
∫∫ 
if
ªª 
(
ªª 
user
ªª 
==
ªª 
null
ªª 
)
ªª 
{
ºº 
throw
ΩΩ 	
new
ΩΩ
 #
ArgumentNullException
ΩΩ #
(
ΩΩ# $
nameof
ΩΩ$ *
(
ΩΩ* +
user
ΩΩ+ /
)
ΩΩ/ 0
)
ΩΩ0 1
;
ΩΩ1 2
}
ææ 
var
øø 
perfil
øø 
=
øø 
user
øø 
.
øø 
perfiles
øø 
.
øø 
FirstOrDefault
øø ,
(
øø, -
)
øø- .
;
øø. /
return
¡¡ 	
new
¡¡
 
PublicProfile
¡¡ 
{
¬¬ 
Username
√√ 
=
√√ 
perfil
√√ 
?
√√ 
.
√√ 
username
√√ 
??
√√  "
$str
√√# (
,
√√( )
Name
ƒƒ 
=
ƒƒ	 

perfil
ƒƒ 
?
ƒƒ 
.
ƒƒ 
nombre
ƒƒ 
??
ƒƒ 
$str
ƒƒ "
,
ƒƒ" #
LastName
≈≈ 
=
≈≈ 
perfil
≈≈ 
?
≈≈ 
.
≈≈ 
apellido_materno
≈≈ '
??
≈≈( *
$str
≈≈+ 0
,
≈≈0 1
	SocialUrl
∆∆ 
=
∆∆ 
perfil
∆∆ 
?
∆∆ 
.
∆∆ 
url
∆∆ 
??
∆∆ 
$str
∆∆ $
,
∆∆$ %
Email
«« 	
=
««
 
user
«« 
.
«« 
correo
«« 
}
»» 
;
»» 
}
…… 
private
ÀÀ 	
static
ÀÀ
 
usuarios
ÀÀ 
CreateUsuario
ÀÀ '
(
ÀÀ' ("
damas_chinasEntities
ÀÀ( <
db
ÀÀ= ?
,
ÀÀ? @
UserDto
ÀÀA H
userDto
ÀÀI P
)
ÀÀP Q
{
ÃÃ 
var
ÕÕ 
usuario
ÕÕ 
=
ÕÕ 
new
ÕÕ 
usuarios
ÕÕ 
{
ŒŒ 
correo
œœ 

=
œœ 
userDto
œœ 
.
œœ 
Email
œœ 
,
œœ 
password_hash
–– 
=
–– 
userDto
–– 
.
–– 
Password
–– $
,
––$ %
rol
—— 
=
—— 	
$str
——
 
,
—— 
fecha_creacion
““ 
=
““ 
DateTime
““ 
.
““ 
UtcNow
““ $
}
”” 
;
”” 
db
’’ 
.
’’ 
usuarios
’’ 
.
’’ 
Add
’’ 
(
’’ 
usuario
’’ 
)
’’ 
;
’’ 
SaveChangesSafely
÷÷ 
(
÷÷ 
db
÷÷ 
)
÷÷ 
;
÷÷ 
return
◊◊ 	
usuario
◊◊
 
;
◊◊ 
}
ÿÿ 
private
⁄⁄ 	
static
⁄⁄
 
perfiles
⁄⁄ 
CreatePerfil
⁄⁄ &
(
⁄⁄& '"
damas_chinasEntities
⁄⁄' ;
db
⁄⁄< >
,
⁄⁄> ?
usuarios
⁄⁄@ H
usuario
⁄⁄I P
,
⁄⁄P Q
UserDto
⁄⁄R Y
userDto
⁄⁄Z a
)
⁄⁄a b
{
€€ 
var
‹‹ 
perfil
‹‹ 
=
‹‹ 
new
‹‹ 
perfiles
‹‹ 
{
›› 

id_usuario
ﬁﬁ 
=
ﬁﬁ 
usuario
ﬁﬁ 
.
ﬁﬁ 

id_usuario
ﬁﬁ #
,
ﬁﬁ# $
username
ﬂﬂ 
=
ﬂﬂ 
userDto
ﬂﬂ 
.
ﬂﬂ 
Username
ﬂﬂ 
,
ﬂﬂ  
nombre
‡‡ 

=
‡‡ 
userDto
‡‡ 
.
‡‡ 
Name
‡‡ 
,
‡‡ 
apellido_materno
·· 
=
·· 
userDto
·· 
.
·· 
LastName
·· '
,
··' (
url
‚‚ 
=
‚‚ 	
string
‚‚
 
.
‚‚ 
Empty
‚‚ 
,
‚‚ 
imagen_perfil
„„ 
=
„„ 
null
„„ 
,
„„ 
ultimo_login
‰‰ 
=
‰‰ 
null
‰‰ 
}
ÂÂ 
;
ÂÂ 
db
ÁÁ 
.
ÁÁ 
perfiles
ÁÁ 
.
ÁÁ 
Add
ÁÁ 
(
ÁÁ 
perfil
ÁÁ 
)
ÁÁ 
;
ÁÁ 
SaveChangesSafely
ËË 
(
ËË 
db
ËË 
)
ËË 
;
ËË 
return
ÈÈ 	
perfil
ÈÈ
 
;
ÈÈ 
}
ÍÍ 
private
ÏÏ 	
static
ÏÏ
 
void
ÏÏ 
SaveChangesSafely
ÏÏ '
(
ÏÏ' ("
damas_chinasEntities
ÏÏ( <
db
ÏÏ= ?
)
ÏÏ? @
{
ÌÌ 
try
ÓÓ 
{
ÔÔ 
db
 
.
 
SaveChanges
 
(
 
)
 
;
 
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ	 
)
DbEntityValidationException
ÚÚ
 %
ex
ÚÚ& (
)
ÚÚ( )
{
ÛÛ 
foreach
ÙÙ 
(
ÙÙ 
var
ÙÙ 
eve
ÙÙ 
in
ÙÙ 
ex
ÙÙ 
.
ÙÙ $
EntityValidationErrors
ÙÙ 1
)
ÙÙ1 2
{
ıı 
Console
ˆˆ 
.
ˆˆ 
	WriteLine
ˆˆ 
(
ˆˆ 
$"
ˆˆ 
$str
ˆˆ "
{
ˆˆ" #
eve
ˆˆ# &
.
ˆˆ& '
Entry
ˆˆ' ,
.
ˆˆ, -
Entity
ˆˆ- 3
.
ˆˆ3 4
GetType
ˆˆ4 ;
(
ˆˆ; <
)
ˆˆ< =
.
ˆˆ= >
Name
ˆˆ> B
}
ˆˆB C
"
ˆˆC D
)
ˆˆD E
;
ˆˆE F
foreach
˜˜ 
(
˜˜ 
var
˜˜ 
ve
˜˜ 
in
˜˜ 
eve
˜˜ 
.
˜˜ 
ValidationErrors
˜˜ ,
)
˜˜, -
{
¯¯ 
Console
˘˘ 
.
˘˘ 
	WriteLine
˘˘ 
(
˘˘ 
$"
˘˘ 
$str
˘˘ %
{
˘˘% &
ve
˘˘& (
.
˘˘( )
PropertyName
˘˘) 5
}
˘˘5 6
$str
˘˘6 ?
{
˘˘? @
ve
˘˘@ B
.
˘˘B C
ErrorMessage
˘˘C O
}
˘˘O P
"
˘˘P Q
)
˘˘Q R
;
˘˘R S
}
˙˙ 
}
˚˚ 
throw
˝˝ 	
;
˝˝	 

}
˛˛ 
}
ˇˇ 
}
ÄÄ 
}ÅÅ †
fC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\ISingInService.cs
	namespace 	
DamasChinas_Server
 
{ 
[ 
ServiceContract 
] 
public		 
	interface		 
ISingInService		  
{

 
[ 
OperationContract 
] 
OperationResult 

CreateUser 
( 
UserDto $
userDto% ,
), -
;- .
} 
} ¿
eC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\IloginService.cs
	namespace 	
DamasChinas_Server
 
{ 
[ 
ServiceContract 
( 
CallbackContract "
=# $
typeof% +
(+ ,
ILoginCallback, :
): ;
,; <
SessionMode= H
=I J
SessionModeK V
.V W
RequiredW _
)_ `
]` a
public		 
	interface		 
ILoginService		 
{

 
[ 
OperationContract 
( 
IsOneWay 
= 
true  $
)$ %
]% &
void 
Login 
( 
LoginRequest 
loginRequest &
)& '
;' (
} 
public 
	interface 
ILoginCallback  
:! "
ISessionCallback# 3
{ 
[ 
OperationContract 
( 
IsOneWay 
= 
true  $
)$ %
]% &
void 
OnLoginSuccess 
( 
PublicProfile #
profile$ +
)+ ,
;, -
[ 
OperationContract 
( 
IsOneWay 
= 
true  $
)$ %
]% &
void 
OnLoginError 
( 
MessageCode %
code& *
)* +
;+ ,
} 
} ÿ
gC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\IAccountManager.cs
	namespace 	
DamasChinas_Server
 
. 

Interfaces '
{ 
[		 
ServiceContract		 
]		 
public

 

	interface

 
IAccountManager

 $
{ 
[ 	
OperationContract	 
] 
PublicProfile 
GetPublicProfile &
(& '
int' *
idUser+ 1
)1 2
;2 3
[ 	
OperationContract	 
] 
OperationResult 
ChangeUsername &
(& '
string' -
username. 6
,6 7
string8 >
newUsername? J
)J K
;K L
[ 	
OperationContract	 
] 
OperationResult 
ChangePassword &
(& '
string' -
correo. 4
,4 5
string6 <
newPassword= H
)H I
;I J
} 
} ˝

_C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\PublicProfile.cs
	namespace 	
DamasChinas_Server
 
. 
Dtos !
{ 
[ 
DataContract 
] 
public 
class 
PublicProfile 
{ 
[ 

DataMember 
] 
public		 
string			 
Username		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
[ 

DataMember 
] 
public 
string	 
Name 
{ 
get 
; 
set 
;  
}! "
[ 

DataMember 
] 
public 
string	 
LastName 
{ 
get 
; 
set  #
;# $
}% &
[ 

DataMember 
] 
public 
string	 
	SocialUrl 
{ 
get 
;  
set! $
;$ %
}& '
[ 

DataMember 
] 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
} 
} ≈
aC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\ChatService.cs
	namespace 	
DamasChinas_Server
 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode %
=& '
InstanceContextMode( ;
.; <

PerSession< F
)F G
]G H
public 
class 
ChatService 
: 
IChatService (
{		 
private 	
static
 
readonly  
ConcurrentDictionary .
<. /
string/ 5
,5 6
IChatCallback7 D
>D E
clientesF N
=O P
newQ T 
ConcurrentDictionaryU i
<i j
stringj p
,p q
IChatCallbackr 
>	 Ä
(
Ä Å
)
Å Ç
;
Ç É
private 	
ChatRepository
 
_repo 
=  
new! $
ChatRepository% 3
(3 4
)4 5
;5 6
public 
void	 
RegistrateClient 
( 
string %
username& .
). /
{ 
var 
callback 
= 
OperationContext "
." #
Current# *
.* +
GetCallbackChannel+ =
<= >
IChatCallback> K
>K L
(L M
)M N
;N O
if 
( 
! 
clientes 
. 
ContainsKey 
( 
username %
)% &
)& '
{ 
clientes 
[ 
username 
] 
= 
callback !
;! "
} 
} 
public 
void	 
SendMessage 
( 
Message !
message" )
)) *
{ 
string 	
idUserSender
 
= 
message  
.  !
UsarnameSender! /
;/ 0
int 
idUserRecipient 
= 
_repo 
. 
GetIdByUsername .
(. /
message/ 6
.6 7
DestinationUsername7 J
)J K
;K L
_repo 
. 	
SaveMessage	 
( 
idUserSender !
,! "
idUserRecipient# 2
,2 3
message4 ;
.; <
Text< @
)@ A
;A B
if   
(   
clientes   
.   
ContainsKey   
(   
message   #
.  # $
DestinationUsername  $ 7
)  7 8
)  8 9
{!! 
try"" 
{## 
clientes$$ 
[$$ 
message$$ 
.$$ 
DestinationUsername$$ )
]$$) *
.$$* +
ReceiveMessage$$+ 9
($$9 :
message$$: A
)$$A B
;$$B C
}%% 
catch&& 	
{'' 
}(( 
})) 
}** 
public,, 
Message,,	 
[,, 
],, !
GetHistoricalMessages,, (
(,,( )
string,,) /
usernameSender,,0 >
,,,> ?
string,,@ F
usernameDestino,,G V
),,V W
{-- 
return.. 	
_repo..
 
... 
GetChatByUsername.. !
(..! "
usernameSender.." 0
,..0 1
usernameDestino..2 A
)..A B
...B C
ToArray..C J
(..J K
)..K L
;..L M
}// 
}11 
}22 ÖH
dC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\AccountManager.cs
	namespace

 	
DamasChinas_Server


 
.

 
Services

 %
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?

PerSession? I
,I J
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
	Reentrant7 @
)@ A
]A B
public 

class 
AccountManager 
:  !
IAccountManager" 1
{ 
private 
readonly 
RepositoryUsers (
_repository) 4
;4 5
public 
AccountManager 
( 
) 
: 
this 
( 
new 
RepositoryUsers &
(& '
)' (
)( )
{ 	
} 	
internal 
AccountManager 
(  
RepositoryUsers  /

repository0 :
): ;
{ 	
_repository 
= 

repository $
??% '
throw( -
new. 1!
ArgumentNullException2 G
(G H
nameofH N
(N O

repositoryO Y
)Y Z
)Z [
;[ \
} 	
public 
PublicProfile 
GetPublicProfile -
(- .
int. 1
idUser2 8
)8 9
{ 	
return 
_repository 
. 
GetPublicProfile /
(/ 0
idUser0 6
)6 7
;7 8
}   	
public## 
OperationResult## 
ChangeUsername## -
(##- .
string##. 4
username##5 =
,##= >
string##? E
newUsername##F Q
)##Q R
{$$ 	
return%% #
ExecuteAccountOperation%% *
(%%* +
(&& 
)&& 
=>&& 
{'' 
bool(( 
success((  
=((! "
_repository((# .
.((. /
ChangeUsername((/ =
(((= >
username((> F
,((F G
newUsername((H S
)((S T
;((T U
if** 
(** 
success** 
)**  
{++ 
SessionManager,, &
.,,& '!
UpdateSessionUsername,,' <
(,,< =
username,,= E
,,,E F
newUsername,,G R
),,R S
;,,S T
}-- 
return// 
success// "
;//" #
}00 
,00 
MessageCode11 
.11 
Success11 #
,11# $
MessageCode22 
.22 
UnknownError22 (
,22( )
MessageCode33 
.33 
ServerUnavailable33 -
,33- .
$str44  
)55 
;55 
}66 	
public99 
OperationResult99 
ChangePassword99 -
(99- .
string99. 4
email995 :
,99: ;
string99< B
newPassword99C N
)99N O
{:: 	
return;; #
ExecuteAccountOperation;; *
(;;* +
(<< 
)<< 
=><< 
_repository<< !
.<<! "
ChangePassword<<" 0
(<<0 1
email<<1 6
,<<6 7
newPassword<<8 C
)<<C D
,<<D E
MessageCode== 
.== 
Success== #
,==# $
MessageCode>> 
.>> 
UnknownError>> (
,>>( )
MessageCode?? 
.?? 
ServerUnavailable?? -
,??- .
$str@@  
)AA 
;AA 
}BB 	
privateDD 
staticDD 
OperationResultDD &#
ExecuteAccountOperationDD' >
(DD> ?
FuncEE 
<EE 
boolEE 
>EE 
	operationEE  
,EE  !
MessageCodeFF 
successCodeFF #
,FF# $
MessageCodeGG 
failureCodeGG #
,GG# $
MessageCodeHH 
	fatalCodeHH !
,HH! "
stringII 
contextII 
)II 
{JJ 	
varKK 
resultKK 
=KK 
newKK 
OperationResultKK ,
(KK, -
)KK- .
;KK. /
tryMM 
{NN 
SystemOO 
.OO 
DiagnosticsOO "
.OO" #
DebugOO# (
.OO( )
	WriteLineOO) 2
(OO2 3
$"OO3 5
$strOO5 Q
{OOQ R
contextOOR Y
}OOY Z
"OOZ [
)OO[ \
;OO\ ]
boolQQ 
successQQ 
=QQ 
	operationQQ (
(QQ( )
)QQ) *
;QQ* +
resultSS 
.SS 
SuccessSS 
=SS  
successSS! (
;SS( )
resultTT 
.TT 
CodeTT 
=TT 
successTT %
?TT& '
successCodeTT( 3
:TT4 5
failureCodeTT6 A
;TTA B
resultUU 
.UU 
TechnicalDetailUU &
=UU' (
successUU) 0
?VV 
$"VV 
{VV 
contextVV  
}VV  !
$strVV! 8
"VV8 9
:WW 
$"WW 
{WW 
contextWW  
}WW  !
$strWW! D
"WWD E
;WWE F
SystemYY 
.YY 
DiagnosticsYY "
.YY" #
DebugYY# (
.YY( )
	WriteLineYY) 2
(YY2 3
successYY3 :
?ZZ 
$"ZZ 
$strZZ  
{ZZ  !
contextZZ! (
}ZZ( )
$strZZ) A
"ZZA B
:[[ 
$"[[ 
$str[[  
{[[  !
context[[! (
}[[( )
$str[[) H
"[[H I
)[[I J
;[[J K
return]] 
result]] 
;]] 
}^^ 
catch__ 
(__ 
SqlException__ 
ex__  "
)__" #
{`` 
resultaa 
.aa 
Successaa 
=aa  
falseaa! &
;aa& '
resultbb 
.bb 
Codebb 
=bb 
	fatalCodebb '
;bb' (
resultcc 
.cc 
TechnicalDetailcc &
=cc' (
excc) +
.cc+ ,
Messagecc, 3
;cc3 4
Systemdd 
.dd 
Diagnosticsdd "
.dd" #
Debugdd# (
.dd( )
	WriteLinedd) 2
(dd2 3
$"dd3 5
$strdd5 J
{ddJ K
contextddK R
}ddR S
$strddS U
{ddU V
exddV X
.ddX Y
MessageddY `
}dd` a
"dda b
)ddb c
;ddc d
returnee 
resultee 
;ee 
}ff 
catchgg 
(gg 
ArgumentExceptiongg $
exgg% '
)gg' (
{hh 
resultii 
.ii 
Successii 
=ii  
falseii! &
;ii& '
resultjj 
.jj 
Codejj 
=jj 
failureCodejj )
;jj) *
resultkk 
.kk 
TechnicalDetailkk &
=kk' (
exkk) +
.kk+ ,
Messagekk, 3
;kk3 4
Systemll 
.ll 
Diagnosticsll "
.ll" #
Debugll# (
.ll( )
	WriteLinell) 2
(ll2 3
$"ll3 5
$strll5 Q
{llQ R
contextllR Y
}llY Z
$strllZ \
{ll\ ]
exll] _
.ll_ `
Messagell` g
}llg h
"llh i
)lli j
;llj k
returnmm 
resultmm 
;mm 
}nn 
catchoo 
(oo %
InvalidOperationExceptionoo ,
exoo- /
)oo/ 0
{pp 
resultqq 
.qq 
Successqq 
=qq  
falseqq! &
;qq& '
resultrr 
.rr 
Coderr 
=rr 
failureCoderr )
;rr) *
resultss 
.ss 
TechnicalDetailss &
=ss' (
exss) +
.ss+ ,
Messagess, 3
;ss3 4
Systemtt 
.tt 
Diagnosticstt "
.tt" #
Debugtt# (
.tt( )
	WriteLinett) 2
(tt2 3
$"tt3 5
$strtt5 R
{ttR S
contextttS Z
}ttZ [
$strtt[ ]
{tt] ^
extt^ `
.tt` a
Messagetta h
}tth i
"tti j
)ttj k
;ttk l
returnuu 
resultuu 
;uu 
}vv 
finallyww 
{xx 
Systemyy 
.yy 
Diagnosticsyy "
.yy" #
Debugyy# (
.yy( )
	WriteLineyy) 2
(yy2 3
$"yy3 5
$stryy5 R
{yyR S
contextyyS Z
}yyZ [
"yy[ \
)yy\ ]
;yy] ^
}zz 
}{{ 	
}|| 
}}} å∞
bC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\LobbyService.cs
	namespace 	
DamasChinas_Server
 
. 
Services %
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
Multiple7 ?
)? @
]@ A
public 

class 
LobbyService 
: 
ILobbyService  -
{ 
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
Lobby6 ;
>; <
_lobbies= E
=F G
newH K 
ConcurrentDictionaryL `
<` a
stringa g
,g h
Lobbyi n
>n o
(o p
)p q
;q r
private 
readonly  
ConcurrentDictionary -
<- .
int. 1
,1 2
ILobbyCallback3 A
>A B
_connectionsC O
=P Q
newR U 
ConcurrentDictionaryV j
<j k
intk n
,n o
ILobbyCallbackp ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
private 
ILobbyCallback 
CurrentCallback .
=>/ 1
OperationContext 
. 
Current $
.$ %
GetCallbackChannel% 7
<7 8
ILobbyCallback8 F
>F G
(G H
)H I
;I J
private 
static 
string 
NewCode %
(% &
)& '
=> 
Guid 
. 
NewGuid 
( 
) 
. 
ToString &
(& '
$str' *
)* +
.+ ,
	Substring, 5
(5 6
$num6 7
,7 8
$num9 :
): ;
.; <
ToUpper< C
(C D
)D E
;E F
public 
Lobby 
CreateLobby  
(  !
int! $

hostUserId% /
,/ 0
string1 7
hostUsername8 D
,D E
boolF J
	isPrivateK T
)T U
{ 	
var 
code 
= 
NewCode 
( 
)  
;  !
var 
lobby 
= 
new 
Lobby !
{ 
Code   
=   
code   
,   

HostUserId!! 
=!! 

hostUserId!! '
,!!' (
	IsPrivate"" 
="" 
	isPrivate"" %
}## 
;## 
lobby%% 
.%% 
Members%% 
.%% 
Add%% 
(%% 
new%% !
LobbyMember%%" -
{&& 
UserId'' 
='' 

hostUserId'' #
,''# $
Username(( 
=(( 
hostUsername(( '
,((' (
IsHost)) 
=)) 
true)) 
}** 
)** 
;** 
_lobbies,, 
[,, 
code,, 
],, 
=,, 
lobby,, "
;,," #
_connections-- 
[-- 

hostUserId-- #
]--# $
=--% &
CurrentCallback--' 6
;--6 7
return// 
lobby// 
;// 
}00 	
public33 
Lobby33 
	JoinLobby33 
(33 
string33 %
code33& *
,33* +
int33, /
userId330 6
,336 7
string338 >
username33? G
)33G H
{44 	
if55 
(55 
!55 
_lobbies55 
.55 
TryGetValue55 %
(55% &
code55& *
,55* +
out55, /
var550 3
lobby554 9
)559 :
)55: ;
throw66 
new66 
FaultException66 (
(66( )
$str66) ;
)66; <
;66< =
if99 
(99 
!99 
_connections99 
.99 
ContainsKey99 )
(99) *
lobby99* /
.99/ 0

HostUserId990 :
)99: ;
)99; <
{:: 
_lobbies;; 
.;; 
	TryRemove;; "
(;;" #
code;;# '
,;;' (
out;;) ,
_;;- .
);;. /
;;;/ 0
throw<< 
new<< 
FaultException<< (
(<<( )
$str<<) E
)<<E F
;<<F G
}== 
if@@ 
(@@ 
lobby@@ 
.@@ 
BannedUsers@@ !
.@@! "
Contains@@" *
(@@* +
userId@@+ 1
)@@1 2
)@@2 3
throwAA 
newAA 
FaultExceptionAA (
(AA( )
$strAA) J
)AAJ K
;AAK L
ifDD 
(DD 
!DD 
lobbyDD 
.DD 
MembersDD 
.DD 
AnyDD "
(DD" #
mDD# $
=>DD% '
mDD( )
.DD) *
UserIdDD* 0
==DD1 3
userIdDD4 :
)DD: ;
)DD; <
{EE 
varFF 
memberFF 
=FF 
newFF  
LobbyMemberFF! ,
{GG 
UserIdHH 
=HH 
userIdHH #
,HH# $
UsernameII 
=II 
usernameII '
,II' (
IsHostJJ 
=JJ 
falseJJ "
}KK 
;KK 
lobbyLL 
.LL 
MembersLL 
.LL 
AddLL !
(LL! "
memberLL" (
)LL( )
;LL) *
}MM 
_connectionsOO 
[OO 
userIdOO 
]OO  
=OO! "
CurrentCallbackOO# 2
;OO2 3
foreachRR 
(RR 
varRR 
mRR 
inRR 
lobbyRR #
.RR# $
MembersRR$ +
.RR+ ,
ToListRR, 2
(RR2 3
)RR3 4
)RR4 5
{SS 
ifTT 
(TT 
_connectionsTT  
.TT  !
TryGetValueTT! ,
(TT, -
mTT- .
.TT. /
UserIdTT/ 5
,TT5 6
outTT7 :
varTT; >
cbTT? A
)TTA B
)TTB C
{UU 
TaskVV 
.VV 
RunVV 
(VV 
(VV 
)VV 
=>VV  "
{WW 
tryXX 
{YY 
cbZZ 
.ZZ 
OnMemberJoinedZZ -
(ZZ- .
newZZ. 1
LobbyMemberZZ2 =
{[[ 
UserId\\  &
=\\' (
userId\\) /
,\\/ 0
Username]]  (
=]]) *
username]]+ 3
,]]3 4
IsHost^^  &
=^^' (
(^^) *
lobby^^* /
.^^/ 0

HostUserId^^0 :
==^^; =
userId^^> D
)^^D E
}__ 
)__ 
;__ 
}`` 
catchaa 
{bb 
_connectionscc (
.cc( )
	TryRemovecc) 2
(cc2 3
mcc3 4
.cc4 5
UserIdcc5 ;
,cc; <
outcc= @
_ccA B
)ccB C
;ccC D
}dd 
}ee 
)ee 
;ee 
}ff 
}gg 
returnii 
lobbyii 
;ii 
}jj 	
publicmm 
Listmm 
<mm 
Lobbymm 
>mm 
GetPublicLobbiesmm +
(mm+ ,
)mm, -
{nn 	
varpp 
inactiveCodespp 
=pp 
_lobbiespp  (
.pp( )
Valuespp) /
.qq 
Whereqq 
(qq 
lqq 
=>qq 
!qq 
_connectionsqq )
.qq) *
ContainsKeyqq* 5
(qq5 6
lqq6 7
.qq7 8

HostUserIdqq8 B
)qqB C
)qqC D
.rr 
Selectrr 
(rr 
lrr 
=>rr 
lrr 
.rr 
Coderr #
)rr# $
.ss 
ToListss 
(ss 
)ss 
;ss 
foreachuu 
(uu 
varuu 
codeuu 
inuu  
inactiveCodesuu! .
)uu. /
_lobbiesvv 
.vv 
	TryRemovevv "
(vv" #
codevv# '
,vv' (
outvv) ,
_vv- .
)vv. /
;vv/ 0
varyy 
activeLobbiesyy 
=yy 
_lobbiesyy  (
.yy( )
Valuesyy) /
.zz 
Wherezz 
(zz 
lzz 
=>zz 
!zz 
lzz 
.zz 
	IsPrivatezz (
&&zz) +
_connectionszz, 8
.zz8 9
ContainsKeyzz9 D
(zzD E
lzzE F
.zzF G

HostUserIdzzG Q
)zzQ R
)zzR S
.{{ 
ToList{{ 
({{ 
){{ 
;{{ 
return}} 
activeLobbies}}  
;}}  !
}~~ 	
public
ÅÅ 
bool
ÅÅ 

LeaveLobby
ÅÅ 
(
ÅÅ 
string
ÅÅ %
code
ÅÅ& *
,
ÅÅ* +
int
ÅÅ, /
userId
ÅÅ0 6
)
ÅÅ6 7
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
_lobbies
ÉÉ 
.
ÉÉ 
TryGetValue
ÉÉ %
(
ÉÉ% &
code
ÉÉ& *
,
ÉÉ* +
out
ÉÉ, /
var
ÉÉ0 3
lobby
ÉÉ4 9
)
ÉÉ9 :
)
ÉÉ: ;
return
ÑÑ 
false
ÑÑ 
;
ÑÑ 
var
ÜÜ 
member
ÜÜ 
=
ÜÜ 
lobby
ÜÜ 
.
ÜÜ 
Members
ÜÜ &
.
ÜÜ& '
FirstOrDefault
ÜÜ' 5
(
ÜÜ5 6
m
ÜÜ6 7
=>
ÜÜ8 :
m
ÜÜ; <
.
ÜÜ< =
UserId
ÜÜ= C
==
ÜÜD F
userId
ÜÜG M
)
ÜÜM N
;
ÜÜN O
if
áá 
(
áá 
member
áá 
==
áá 
null
áá 
)
áá 
return
àà 
false
àà 
;
àà 
lobby
ãã 
.
ãã 
Members
ãã 
.
ãã 
Remove
ãã  
(
ãã  !
member
ãã! '
)
ãã' (
;
ãã( )
_connections
åå 
.
åå 
	TryRemove
åå "
(
åå" #
userId
åå# )
,
åå) *
out
åå+ .
_
åå/ 0
)
åå0 1
;
åå1 2
foreach
èè 
(
èè 
var
èè 
m
èè 
in
èè 
lobby
èè #
.
èè# $
Members
èè$ +
.
èè+ ,
ToList
èè, 2
(
èè2 3
)
èè3 4
)
èè4 5
{
êê 
if
ëë 
(
ëë 
_connections
ëë  
.
ëë  !
TryGetValue
ëë! ,
(
ëë, -
m
ëë- .
.
ëë. /
UserId
ëë/ 5
,
ëë5 6
out
ëë7 :
var
ëë; >
cb
ëë? A
)
ëëA B
)
ëëB C
{
íí 
try
ìì 
{
îî 
cb
ïï 
.
ïï 
OnMemberLeft
ïï '
(
ïï' (
userId
ïï( .
)
ïï. /
;
ïï/ 0
}
ññ 
catch
óó 
{
òò 
_connections
ôô $
.
ôô$ %
	TryRemove
ôô% .
(
ôô. /
m
ôô/ 0
.
ôô0 1
UserId
ôô1 7
,
ôô7 8
out
ôô9 <
_
ôô= >
)
ôô> ?
;
ôô? @
}
öö 
}
õõ 
}
úú 
if
üü 
(
üü 
userId
üü 
==
üü 
lobby
üü 
.
üü  

HostUserId
üü  *
||
üü+ -
lobby
üü. 3
.
üü3 4
Members
üü4 ;
.
üü; <
Count
üü< A
==
üüB D
$num
üüE F
)
üüF G
{
†† 
foreach
°° 
(
°° 
var
°° 
m
°° 
in
°° !
lobby
°°" '
.
°°' (
Members
°°( /
.
°°/ 0
ToList
°°0 6
(
°°6 7
)
°°7 8
)
°°8 9
{
¢¢ 
if
££ 
(
££ 
_connections
££ $
.
££$ %
TryGetValue
££% 0
(
££0 1
m
££1 2
.
££2 3
UserId
££3 9
,
££9 :
out
££; >
var
££? B
cb
££C E
)
££E F
)
££F G
{
§§ 
try
•• 
{
¶¶ 
cb
ßß 
.
ßß 
OnLobbyClosed
ßß ,
(
ßß, -
$str
ßß- ^
)
ßß^ _
;
ßß_ `
}
®® 
catch
©© 
{
™™ 
_connections
´´ (
.
´´( )
	TryRemove
´´) 2
(
´´2 3
m
´´3 4
.
´´4 5
UserId
´´5 ;
,
´´; <
out
´´= @
_
´´A B
)
´´B C
;
´´C D
}
¨¨ 
}
≠≠ 
}
ÆÆ 
_lobbies
∞∞ 
.
∞∞ 
	TryRemove
∞∞ "
(
∞∞" #
code
∞∞# '
,
∞∞' (
out
∞∞) ,
_
∞∞- .
)
∞∞. /
;
∞∞/ 0
}
±± 
var
¥¥ 
inactiveLobbies
¥¥ 
=
¥¥  !
_lobbies
¥¥" *
.
¥¥* +
Values
¥¥+ 1
.
µµ 
Where
µµ 
(
µµ 
l
µµ 
=>
µµ 
!
µµ 
_connections
µµ )
.
µµ) *
ContainsKey
µµ* 5
(
µµ5 6
l
µµ6 7
.
µµ7 8

HostUserId
µµ8 B
)
µµB C
)
µµC D
.
∂∂ 
Select
∂∂ 
(
∂∂ 
l
∂∂ 
=>
∂∂ 
l
∂∂ 
.
∂∂ 
Code
∂∂ #
)
∂∂# $
.
∑∑ 
ToList
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
foreach
ππ 
(
ππ 
var
ππ 
inactiveCode
ππ %
in
ππ& (
inactiveLobbies
ππ) 8
)
ππ8 9
_lobbies
∫∫ 
.
∫∫ 
	TryRemove
∫∫ "
(
∫∫" #
inactiveCode
∫∫# /
,
∫∫/ 0
out
∫∫1 4
_
∫∫5 6
)
∫∫6 7
;
∫∫7 8
return
ºº 
true
ºº 
;
ºº 
}
ΩΩ 	
public
√√ 
void
√√ 
SendLobbyMessage
√√ $
(
√√$ %
string
√√% +
code
√√, 0
,
√√0 1
int
√√2 5
userId
√√6 <
,
√√< =
string
√√> D
username
√√E M
,
√√M N
string
√√O U
message
√√V ]
)
√√] ^
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
!
≈≈ 
_lobbies
≈≈ 
.
≈≈ 
TryGetValue
≈≈ %
(
≈≈% &
code
≈≈& *
,
≈≈* +
out
≈≈, /
var
≈≈0 3
lobby
≈≈4 9
)
≈≈9 :
)
≈≈: ;
return
≈≈< B
;
≈≈B C
var
«« 
utc
«« 
=
«« 
DateTime
«« 
.
«« 
UtcNow
«« %
.
««% &
ToString
««& .
(
««. /
$str
««/ 2
)
««2 3
;
««3 4
foreach
»» 
(
»» 
var
»» 
m
»» 
in
»» 
lobby
»» #
.
»»# $
Members
»»$ +
)
»»+ ,
if
…… 
(
…… 
_connections
……  
.
……  !
TryGetValue
……! ,
(
……, -
m
……- .
.
……. /
UserId
……/ 5
,
……5 6
out
……7 :
var
……; >
cb
……? A
)
……A B
)
……B C
cb
   
.
   
OnMessageReceived
   (
(
  ( )
userId
  ) /
,
  / 0
username
  1 9
,
  9 :
message
  ; B
,
  B C
utc
  D G
)
  G H
;
  H I
}
ÀÀ 	
public
ŒŒ 
Lobby
ŒŒ 
GetLobby
ŒŒ 
(
ŒŒ 
string
ŒŒ $
code
ŒŒ% )
)
ŒŒ) *
=>
œœ 
_lobbies
œœ 
.
œœ 
TryGetValue
œœ #
(
œœ# $
code
œœ$ (
,
œœ( )
out
œœ* -
var
œœ. 1
lobby
œœ2 7
)
œœ7 8
?
œœ9 :
lobby
œœ; @
:
œœA B
null
œœC G
;
œœG H
public
““ 
bool
““ 

KickMember
““ 
(
““ 
string
““ %
code
““& *
,
““* +
int
““, /
targetUserId
““0 <
)
““< =
{
”” 	
if
‘‘ 
(
‘‘ 
!
‘‘ 
_lobbies
‘‘ 
.
‘‘ 
TryGetValue
‘‘ %
(
‘‘% &
code
‘‘& *
,
‘‘* +
out
‘‘, /
var
‘‘0 3
lobby
‘‘4 9
)
‘‘9 :
)
‘‘: ;
return
‘‘< B
false
‘‘C H
;
‘‘H I
var
’’ 
target
’’ 
=
’’ 
lobby
’’ 
.
’’ 
Members
’’ &
.
’’& '
FirstOrDefault
’’' 5
(
’’5 6
m
’’6 7
=>
’’8 :
m
’’; <
.
’’< =
UserId
’’= C
==
’’D F
targetUserId
’’G S
)
’’S T
;
’’T U
if
÷÷ 
(
÷÷ 
target
÷÷ 
==
÷÷ 
null
÷÷ 
)
÷÷ 
return
÷÷  &
false
÷÷' ,
;
÷÷, -
lobby
ÿÿ 
.
ÿÿ 
Members
ÿÿ 
.
ÿÿ 
Remove
ÿÿ  
(
ÿÿ  !
target
ÿÿ! '
)
ÿÿ' (
;
ÿÿ( )
_connections
ŸŸ 
.
ŸŸ 
	TryRemove
ŸŸ "
(
ŸŸ" #
targetUserId
ŸŸ# /
,
ŸŸ/ 0
out
ŸŸ1 4
_
ŸŸ5 6
)
ŸŸ6 7
;
ŸŸ7 8
foreach
€€ 
(
€€ 
var
€€ 
m
€€ 
in
€€ 
lobby
€€ #
.
€€# $
Members
€€$ +
)
€€+ ,
if
‹‹ 
(
‹‹ 
_connections
‹‹  
.
‹‹  !
TryGetValue
‹‹! ,
(
‹‹, -
m
‹‹- .
.
‹‹. /
UserId
‹‹/ 5
,
‹‹5 6
out
‹‹7 :
var
‹‹; >
cb
‹‹? A
)
‹‹A B
)
‹‹B C
cb
›› 
.
›› 
OnMemberLeft
›› #
(
››# $
targetUserId
››$ 0
)
››0 1
;
››1 2
return
ﬂﬂ 
true
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
public
„„ 
bool
„„ 
	BanMember
„„ 
(
„„ 
string
„„ $
code
„„% )
,
„„) *
int
„„+ .
targetUserId
„„/ ;
)
„„; <
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
_lobbies
ÂÂ 
.
ÂÂ 
TryGetValue
ÂÂ %
(
ÂÂ% &
code
ÂÂ& *
,
ÂÂ* +
out
ÂÂ, /
var
ÂÂ0 3
lobby
ÂÂ4 9
)
ÂÂ9 :
)
ÂÂ: ;
return
ÊÊ 
false
ÊÊ 
;
ÊÊ 
if
ËË 
(
ËË 
lobby
ËË 
.
ËË 
BannedUsers
ËË !
.
ËË! "
Contains
ËË" *
(
ËË* +
targetUserId
ËË+ 7
)
ËË7 8
)
ËË8 9
return
ÈÈ 
false
ÈÈ 
;
ÈÈ 
var
ÎÎ 
target
ÎÎ 
=
ÎÎ 
lobby
ÎÎ 
.
ÎÎ 
Members
ÎÎ &
.
ÎÎ& '
FirstOrDefault
ÎÎ' 5
(
ÎÎ5 6
m
ÎÎ6 7
=>
ÎÎ8 :
m
ÎÎ; <
.
ÎÎ< =
UserId
ÎÎ= C
==
ÎÎD F
targetUserId
ÎÎG S
)
ÎÎS T
;
ÎÎT U
if
ÏÏ 
(
ÏÏ 
target
ÏÏ 
==
ÏÏ 
null
ÏÏ 
)
ÏÏ 
return
ÌÌ 
false
ÌÌ 
;
ÌÌ 
lobby
ÔÔ 
.
ÔÔ 
Members
ÔÔ 
.
ÔÔ 
Remove
ÔÔ  
(
ÔÔ  !
target
ÔÔ! '
)
ÔÔ' (
;
ÔÔ( )
lobby
 
.
 
BannedUsers
 
.
 
Add
 !
(
! "
targetUserId
" .
)
. /
;
/ 0
_connections
ÒÒ 
.
ÒÒ 
	TryRemove
ÒÒ "
(
ÒÒ" #
targetUserId
ÒÒ# /
,
ÒÒ/ 0
out
ÒÒ1 4
_
ÒÒ5 6
)
ÒÒ6 7
;
ÒÒ7 8
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 
m
ÛÛ 
in
ÛÛ 
lobby
ÛÛ #
.
ÛÛ# $
Members
ÛÛ$ +
)
ÛÛ+ ,
if
ÙÙ 
(
ÙÙ 
_connections
ÙÙ  
.
ÙÙ  !
TryGetValue
ÙÙ! ,
(
ÙÙ, -
m
ÙÙ- .
.
ÙÙ. /
UserId
ÙÙ/ 5
,
ÙÙ5 6
out
ÙÙ7 :
var
ÙÙ; >
cb
ÙÙ? A
)
ÙÙA B
)
ÙÙB C
cb
ıı 
.
ıı 
OnMemberLeft
ıı #
(
ıı# $
targetUserId
ıı$ 0
)
ıı0 1
;
ıı1 2
return
˜˜ 
true
˜˜ 
;
˜˜ 
}
¯¯ 	
public
˚˚ 
bool
˚˚ 
	StartGame
˚˚ 
(
˚˚ 
string
˚˚ $
code
˚˚% )
)
˚˚) *
{
¸¸ 	
if
˝˝ 
(
˝˝ 
!
˝˝ 
_lobbies
˝˝ 
.
˝˝ 
TryGetValue
˝˝ %
(
˝˝% &
code
˝˝& *
,
˝˝* +
out
˝˝, /
var
˝˝0 3
lobby
˝˝4 9
)
˝˝9 :
)
˝˝: ;
return
˝˝< B
false
˝˝C H
;
˝˝H I
foreach
ˇˇ 
(
ˇˇ 
var
ˇˇ 
m
ˇˇ 
in
ˇˇ 
lobby
ˇˇ #
.
ˇˇ# $
Members
ˇˇ$ +
)
ˇˇ+ ,
if
ÄÄ 
(
ÄÄ 
_connections
ÄÄ  
.
ÄÄ  !
TryGetValue
ÄÄ! ,
(
ÄÄ, -
m
ÄÄ- .
.
ÄÄ. /
UserId
ÄÄ/ 5
,
ÄÄ5 6
out
ÄÄ7 :
var
ÄÄ; >
cb
ÄÄ? A
)
ÄÄA B
)
ÄÄB C
cb
ÅÅ 
.
ÅÅ 
OnGameStarted
ÅÅ $
(
ÅÅ$ %
code
ÅÅ% )
)
ÅÅ) *
;
ÅÅ* +
return
ÜÜ 
true
ÜÜ 
;
ÜÜ 
}
áá 	
}
àà 
}ââ ¶
ZC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\IChatCallback.cs
	namespace 	
DamasChinas_Server
 
{ 
public 
	interface 
IChatCallback 
{ 
[ 
OperationContract 
( 
IsOneWay 
= 
true  $
)$ %
]% &
void		 
ReceiveMessage		 
(		 
Message		 
message		 %
)		% &
;		& '
}

 
}  

dC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\IChatService.cs
	namespace 	
DamasChinas_Server
 
{ 
[ 
ServiceContract 
( 
CallbackContract "
=# $
typeof% +
(+ ,
IChatCallback, 9
)9 :
): ;
]; <
public 
	interface 
IChatService 
{ 
[		 
OperationContract		 
(		 
IsOneWay		 
=		 
true		  $
)		$ %
]		% &
void

 
SendMessage

 
(

 
Message

 
message

 "
)

" #
;

# $
[ 
OperationContract 
( 
IsOneWay 
= 
true  $
)$ %
]% &
void 
RegistrateClient 
( 
string 
username '
)' (
;( )
[ 
OperationContract 
] 
Message 	
[	 

]
 !
GetHistoricalMessages !
(! "
string" (
usernameSender) 7
,7 8
string9 ?
usernameRecipient@ Q
)Q R
;R S
} 
} ™Î
cC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\logic\FriendRepository.cs
	namespace 	
DamasChinas_Server
 
{		 
public

 
class

 
FriendRepository

 %
{ 	
private 
readonly  
RepositoryUsers! 0
	_userRepo1 :
=; <
new= @
RepositoryUsersA P
(P Q
)Q R
;R S
	protected 
virtual ! 
damas_chinasEntities" 6
CreateDbContext7 F
(F G
)G H
{ 
return 
new " 
damas_chinasEntities# 7
(7 8
)8 9
;9 :
} 
public 
List 
< 
	FriendDto %
>% &

GetFriends' 1
(1 2
string2 8
username9 A
)A B
{ 
int 
id 
=  
	_userRepo! *
.* +
GetUserIdByUsername+ >
(> ?
username? G
)G H
;H I
using 
( 
var "
db# %
=& '
CreateDbContext( 7
(7 8
)8 9
)9 :
{ 
var  #
friends$ +
=, -
db. 0
.0 1
	amistades1 :
.0 1
Include1 8
(8 9
a9 :
=>; =
a> ?
.? @
usuarios@ H
.H I
perfilesI Q
)Q R
.0 1
Include1 8
(8 9
a9 :
=>; =
a> ?
.? @
	usuarios1@ I
.I J
perfilesJ R
)R S
.0 1
Where1 6
(6 7
a7 8
=>9 ;
a< =
.= >
id_usuario1> I
==J L
idM O
||P R
aS T
.T U
id_usuario2U `
==a c
idd f
)f g
.0 1
ToList1 7
(7 8
)8 9
;9 :
if  "
(# $
friends$ +
==, .
null/ 3
||4 6
friends7 >
.> ?
Count? D
==E G
$numH I
)I J
return  ( .
new  / 2
List  3 7
<  7 8
	FriendDto  8 A
>  A B
(  B C
)  C D
;  D E
var""  #
friendships""$ /
=""0 1
friends""2 9
.""9 :
Select"": @
(""@ A
a""A B
=>""C E
{##  !
var$$( +

friendUser$$, 6
=$$7 8
a$$9 :
.$$: ;
id_usuario1$$; F
==$$G I
id$$J L
?$$M N
a$$O P
.$$P Q
	usuarios1$$Q Z
:$$[ \
a$$] ^
.$$^ _
usuarios$$_ g
;$$g h
var&&( +
profile&&, 3
=&&4 5

friendUser&&6 @
.&&@ A
perfiles&&A I
.&&I J
FirstOrDefault&&J X
(&&X Y
)&&Y Z
;&&Z [
string((( .
friendUsername((/ =
=((> ?
profile((@ G
?((G H
.((H I
username((I Q
??((R T
$str((U Z
;((Z [
bool))( ,
isOnline))- 5
=))6 7
!))8 9
string))9 ?
.))? @
IsNullOrWhiteSpace))@ R
())R S
friendUsername))S a
)))a b
&&))c e
SessionManager**8 F
.**F G
IsOnline**G O
(**O P
friendUsername**P ^
)**^ _
;**_ `
return,,( .
new,,/ 2
	FriendDto,,3 <
{--( )
IdFriend..0 8
=..9 :

friendUser..; E
...E F

id_usuario..F P
,..P Q
Username//0 8
=//9 :
friendUsername//; I
,//I J
ConnectionState000 ?
=00@ A
isOnline00B J
,00J K
Avatar110 6
=117 8
profile119 @
?11@ A
.11A B
imagen_perfil11B O
??11P R
$str11S `
}22( )
;22) *
}33  !
)33! "
.33" #
ToList33# )
(33) *
)33* +
;33+ ,
return55  &
friendships55' 2
;552 3
}66 
}77 
public99 
List99 
<99 
	FriendDto99 %
>99% &
GetFriendRequests99' 8
(998 9
string999 ?
username99@ H
)99H I
{:: 
int;; 
userId;; "
=;;# $
	_userRepo;;% .
.;;. /
GetUserIdByUsername;;/ B
(;;B C
username;;C K
);;K L
;;;L M
using== 
(== 
var== "
db==# %
===& '
CreateDbContext==( 7
(==7 8
)==8 9
)==9 :
{>> 
var??  #
pendingRequests??$ 3
=??4 5
db??6 8
.??8 9
solicitudes_amistad??9 L
.@@0 1
Include@@1 8
(@@8 9
s@@9 :
=>@@; =
s@@> ?
.@@? @
usuarios@@@ H
.@@H I
perfiles@@I Q
)@@Q R
.AA0 1
WhereAA1 6
(AA6 7
sAA7 8
=>AA9 ;
sAA< =
.AA= >
id_receptorAA> I
==AAJ L
userIdAAM S
&&AAT V
sAAW X
.AAX Y
estadoAAY _
==AA` b
$strAAc n
)AAn o
.BB0 1
ToListBB1 7
(BB7 8
)BB8 9
;BB9 :
ifDD  "
(DD# $
!DD$ %
pendingRequestsDD% 4
.DD4 5
AnyDD5 8
(DD8 9
)DD9 :
)DD: ;
{EE  !
returnFF( .
newFF/ 2
ListFF3 7
<FF7 8
	FriendDtoFF8 A
>FFA B
(FFB C
)FFC D
;FFD E
}GG  !
returnII  &
pendingRequestsII' 6
.II6 7
SelectII7 =
(II= >
sII> ?
=>II@ B
{JJ  !
varKK( +
senderProfileKK, 9
=KK: ;
sKK< =
.KK= >
usuariosKK> F
.KKF G
perfilesKKG O
.KKO P
FirstOrDefaultKKP ^
(KK^ _
)KK_ `
;KK` a
stringLL( .
senderUsernameLL/ =
=LL> ?
senderProfileLL@ M
?LLM N
.LLN O
usernameLLO W
??LLX Z
$strLL[ `
;LL` a
boolMM( ,
isOnlineMM- 5
=MM6 7
!MM8 9
stringMM9 ?
.MM? @
IsNullOrWhiteSpaceMM@ R
(MMR S
senderUsernameMMS a
)MMa b
&&MMc e
SessionManagerMMf t
.MMt u
IsOnlineMMu }
(MM} ~
senderUsername	MM~ å
)
MMå ç
;
MMç é
returnOO( .
newOO/ 2
	FriendDtoOO3 <
{PP( )
IdFriendQQ0 8
=QQ9 :
sQQ; <
.QQ< =
	id_emisorQQ= F
,QQF G
UsernameRR0 8
=RR9 :
senderUsernameRR; I
,RRI J
ConnectionStateSS0 ?
=SS@ A
isOnlineSSB J
,SSJ K
AvatarTT0 6
=TT7 8
senderProfileTT9 F
?TTF G
.TTG H
imagen_perfilTTH U
??TTV X
$strTTY f
}UU( )
;UU) *
}VV  !
)VV! "
.VV" #
ToListVV# )
(VV) *
)VV* +
;VV+ ,
}WW 
}XX 
publicZZ 
boolZZ 
	AddFriendZZ %
(ZZ% &
intZZ& )

idUsuario1ZZ* 4
,ZZ4 5
intZZ6 9

idUsuario2ZZ: D
)ZZD E
{[[ 
if\\ 
(\\ 

idUsuario1\\ &
==\\' )

idUsuario2\\* 4
)\\4 5
{]] 
throw^^  %
new^^& )
	Exception^^* 3
(^^3 4
$str^^4 _
)^^_ `
;^^` a
}__ 
usingaa 
(aa 
varaa "
dbaa# %
=aa& '
CreateDbContextaa( 7
(aa7 8
)aa8 9
)aa9 :
{bb 
varcc  #
existe1cc$ +
=cc, -
dbcc. 0
.cc0 1
usuarioscc1 9
.cc9 :
Anycc: =
(cc= >
ucc> ?
=>cc@ B
uccC D
.ccD E

id_usuarioccE O
==ccP R

idUsuario1ccS ]
)cc] ^
;cc^ _
vardd  #
existe2dd$ +
=dd, -
dbdd. 0
.dd0 1
usuariosdd1 9
.dd9 :
Anydd: =
(dd= >
udd> ?
=>dd@ B
uddC D
.ddD E

id_usuarioddE O
==ddP R

idUsuario2ddS ]
)dd] ^
;dd^ _
ifff  "
(ff# $
!ff$ %
existe1ff% ,
||ff- /
!ff0 1
existe2ff1 8
)ff8 9
{gg  !
throwhh( -
newhh. 1
	Exceptionhh2 ;
(hh; <
$strhh< ^
)hh^ _
;hh_ `
}ii  !
booljj  $
yaSonAmigosjj% 0
=jj1 2
dbjj3 5
.jj5 6
	amistadesjj6 ?
.jj? @
Anyjj@ C
(jjC D
ajjD E
=>jjF H
(kk( )
akk) *
.kk* +
id_usuario1kk+ 6
==kk7 9

idUsuario1kk: D
&&kkE G
akkH I
.kkI J
id_usuario2kkJ U
==kkV X

idUsuario2kkY c
)kkc d
||kke g
(ll( )
all) *
.ll* +
id_usuario1ll+ 6
==ll7 9

idUsuario2ll: D
&&llE G
allH I
.llI J
id_usuario2llJ U
==llV X

idUsuario1llY c
)llc d
)mm  !
;mm! "
ifoo  "
(oo# $
yaSonAmigosoo$ /
)oo/ 0
{pp  !
throwqq( -
newqq. 1
	Exceptionqq2 ;
(qq; <
$strqq< [
)qq[ \
;qq\ ]
}rr  !
varss  #
nuevaAmistadss$ 0
=ss1 2
newss3 6
	amistadesss7 @
{tt  !
id_usuario1uu( 3
=uu4 5

idUsuario1uu6 @
,uu@ A
id_usuario2vv( 3
=vv4 5

idUsuario2vv6 @
,vv@ A
fecha_amistadww( 5
=ww6 7
DateTimeww8 @
.ww@ A
NowwwA D
}xx  !
;xx! "
dbzz  "
.zz" #
	amistadeszz# ,
.zz, -
Addzz- 0
(zz0 1
nuevaAmistadzz1 =
)zz= >
;zz> ?
db{{  "
.{{" #
SaveChanges{{# .
({{. /
){{/ 0
;{{0 1
return}}  &
true}}' +
;}}+ ,
}~~ 
} 
public
ÅÅ 
bool
ÅÅ 
DeleteFriend
ÅÅ (
(
ÅÅ( )
int
ÅÅ) ,

idUsuario1
ÅÅ- 7
,
ÅÅ7 8
int
ÅÅ9 <

idUsuario2
ÅÅ= G
)
ÅÅG H
{
ÇÇ 
using
ÉÉ 
(
ÉÉ 
var
ÉÉ "
db
ÉÉ# %
=
ÉÉ& '
CreateDbContext
ÉÉ( 7
(
ÉÉ7 8
)
ÉÉ8 9
)
ÉÉ9 :
{
ÑÑ 
var
ÖÖ  #
amistad
ÖÖ$ +
=
ÖÖ, -
db
ÖÖ. 0
.
ÖÖ0 1
	amistades
ÖÖ1 :
.
ÖÖ: ;
FirstOrDefault
ÖÖ; I
(
ÖÖI J
a
ÖÖJ K
=>
ÖÖL N
(
ÜÜ( )
a
ÜÜ) *
.
ÜÜ* +
id_usuario1
ÜÜ+ 6
==
ÜÜ7 9

idUsuario1
ÜÜ: D
&&
ÜÜE G
a
ÜÜH I
.
ÜÜI J
id_usuario2
ÜÜJ U
==
ÜÜV X

idUsuario2
ÜÜY c
)
ÜÜc d
||
ÜÜe g
(
áá( )
a
áá) *
.
áá* +
id_usuario1
áá+ 6
==
áá7 9

idUsuario2
áá: D
&&
ááE G
a
ááH I
.
ááI J
id_usuario2
ááJ U
==
ááV X

idUsuario1
ááY c
)
áác d
)
àà  !
;
àà! "
if
ää  "
(
ää# $
amistad
ää$ +
==
ää, .
null
ää/ 3
)
ää3 4
{
ãã  !
throw
åå( -
new
åå. 1
	Exception
åå2 ;
(
åå; <
$str
åå< i
)
ååi j
;
ååj k
}
çç  !
db
èè  "
.
èè" #
	amistades
èè# ,
.
èè, -
Remove
èè- 3
(
èè3 4
amistad
èè4 ;
)
èè; <
;
èè< =
db
êê  "
.
êê" #
SaveChanges
êê# .
(
êê. /
)
êê/ 0
;
êê0 1
return
ëë  &
true
ëë' +
;
ëë+ ,
}
íí 
}
ìì 
public
ïï 
bool
ïï 
SendFriendRequest
ïï -
(
ïï- .
string
ïï. 4
senderUsername
ïï5 C
,
ïïC D
string
ïïE K
receiverUsername
ïïL \
)
ïï\ ]
{
ññ 
int
óó 
senderId
óó $
=
óó% &
	_userRepo
óó' 0
.
óó0 1!
GetUserIdByUsername
óó1 D
(
óóD E
senderUsername
óóE S
)
óóS T
;
óóT U
int
òò 

receiverId
òò &
=
òò' (
	_userRepo
òò) 2
.
òò2 3!
GetUserIdByUsername
òò3 F
(
òòF G
receiverUsername
òòG W
)
òòW X
;
òòX Y
if
öö 
(
öö 
senderId
öö $
==
öö% '

receiverId
öö( 2
)
öö2 3
{
õõ 
throw
úú  %
new
úú& )'
InvalidOperationException
úú* C
(
úúC D
$str
úúD |
)
úú| }
;
úú} ~
}
ùù 
using
üü 
(
üü 
var
üü "
db
üü# %
=
üü& '
CreateDbContext
üü( 7
(
üü7 8
)
üü8 9
)
üü9 :
{
†† 
bool
°°  $
friendshipExists
°°% 5
=
°°6 7
db
°°8 :
.
°°: ;
	amistades
°°; D
.
°°D E
Any
°°E H
(
°°H I
a
°°I J
=>
°°K M
(
¢¢$ %
a
¢¢% &
.
¢¢& '
id_usuario1
¢¢' 2
==
¢¢3 5
senderId
¢¢6 >
&&
¢¢? A
a
¢¢B C
.
¢¢C D
id_usuario2
¢¢D O
==
¢¢P R

receiverId
¢¢S ]
)
¢¢] ^
||
¢¢_ a
(
££$ %
a
££% &
.
££& '
id_usuario1
££' 2
==
££3 5

receiverId
££6 @
&&
££A C
a
££D E
.
££E F
id_usuario2
££F Q
==
££R T
senderId
££U ]
)
££] ^
)
££^ _
;
££_ `
if
••  "
(
••# $
friendshipExists
••$ 4
)
••4 5
{
¶¶  !
throw
ßß( -
new
ßß. 1'
InvalidOperationException
ßß2 K
(
ßßK L
$str
ßßL i
)
ßßi j
;
ßßj k
}
®®  !
bool
™™  $
	isBlocked
™™% .
=
™™/ 0
db
™™1 3
.
™™3 4
bloqueos
™™4 <
.
™™< =
Any
™™= @
(
™™@ A
b
™™A B
=>
™™C E
(
´´$ %
b
´´% &
.
´´& '
id_bloqueador
´´' 4
==
´´5 7
senderId
´´8 @
&&
´´A C
b
´´D E
.
´´E F
id_bloqueado
´´F R
==
´´S U

receiverId
´´V `
)
´´` a
||
´´b d
(
¨¨$ %
b
¨¨% &
.
¨¨& '
id_bloqueador
¨¨' 4
==
¨¨5 7

receiverId
¨¨8 B
&&
¨¨C E
b
¨¨F G
.
¨¨G H
id_bloqueado
¨¨H T
==
¨¨U W
senderId
¨¨X `
)
¨¨` a
)
¨¨a b
;
¨¨b c
if
ÆÆ  "
(
ÆÆ# $
	isBlocked
ÆÆ$ -
)
ÆÆ- .
{
ØØ  !
throw
∞∞( -
new
∞∞. 1'
InvalidOperationException
∞∞2 K
(
∞∞K L
$str
∞∞L |
)
∞∞| }
;
∞∞} ~
}
±±  !
bool
≥≥  $
pendingRequest
≥≥% 3
=
≥≥4 5
db
≥≥6 8
.
≥≥8 9!
solicitudes_amistad
≥≥9 L
.
≥≥L M
Any
≥≥M P
(
≥≥P Q
s
≥≥Q R
=>
≥≥S U
(
¥¥$ %
(
¥¥% &
s
¥¥& '
.
¥¥' (
	id_emisor
¥¥( 1
==
¥¥2 4
senderId
¥¥5 =
&&
¥¥> @
s
¥¥A B
.
¥¥B C
id_receptor
¥¥C N
==
¥¥O Q

receiverId
¥¥R \
)
¥¥\ ]
||
¥¥^ `
(
µµ% &
s
µµ& '
.
µµ' (
	id_emisor
µµ( 1
==
µµ2 4

receiverId
µµ5 ?
&&
µµ@ B
s
µµC D
.
µµD E
id_receptor
µµE P
==
µµQ S
senderId
µµT \
)
µµ\ ]
)
µµ] ^
&&
µµ_ a
s
∂∂$ %
.
∂∂% &
estado
∂∂& ,
==
∂∂- /
$str
∂∂0 ;
)
∂∂; <
;
∂∂< =
if
∏∏  "
(
∏∏# $
pendingRequest
∏∏$ 2
)
∏∏2 3
{
ππ  !
throw
∫∫( -
new
∫∫. 1'
InvalidOperationException
∫∫2 K
(
∫∫K L
$str∫∫L É
)∫∫É Ñ
;∫∫Ñ Ö
}
ªª  !
var
ΩΩ  #
request
ΩΩ$ +
=
ΩΩ, -
new
ΩΩ. 1!
solicitudes_amistad
ΩΩ2 E
{
ææ  !
	id_emisor
øø( 1
=
øø2 3
senderId
øø4 <
,
øø< =
id_receptor
¿¿( 3
=
¿¿4 5

receiverId
¿¿6 @
,
¿¿@ A
fecha_envio
¡¡( 3
=
¡¡4 5
DateTime
¡¡6 >
.
¡¡> ?
Now
¡¡? B
,
¡¡B C
estado
¬¬( .
=
¬¬/ 0
$str
¬¬1 <
}
√√  !
;
√√! "
db
≈≈  "
.
≈≈" #!
solicitudes_amistad
≈≈# 6
.
≈≈6 7
Add
≈≈7 :
(
≈≈: ;
request
≈≈; B
)
≈≈B C
;
≈≈C D
db
∆∆  "
.
∆∆" #
SaveChanges
∆∆# .
(
∆∆. /
)
∆∆/ 0
;
∆∆0 1
return
««  &
true
««' +
;
««+ ,
}
»» 
}
…… 
public
ÀÀ 
bool
ÀÀ '
UpdateFriendRequestStatus
ÀÀ 5
(
ÀÀ5 6
string
ÀÀ6 <
receiverUsername
ÀÀ= M
,
ÀÀM N
string
ÀÀO U
senderUsername
ÀÀV d
,
ÀÀd e
bool
ÀÀf j
accept
ÀÀk q
)
ÀÀq r
{
ÃÃ 
int
ÕÕ 

receiverId
ÕÕ &
=
ÕÕ' (
	_userRepo
ÕÕ) 2
.
ÕÕ2 3!
GetUserIdByUsername
ÕÕ3 F
(
ÕÕF G
receiverUsername
ÕÕG W
)
ÕÕW X
;
ÕÕX Y
int
ŒŒ 
senderId
ŒŒ $
=
ŒŒ% &
	_userRepo
ŒŒ' 0
.
ŒŒ0 1!
GetUserIdByUsername
ŒŒ1 D
(
ŒŒD E
senderUsername
ŒŒE S
)
ŒŒS T
;
ŒŒT U
using
–– 
(
–– 
var
–– "
db
––# %
=
––& '
CreateDbContext
––( 7
(
––7 8
)
––8 9
)
––9 :
{
—— 
var
““  #
request
““$ +
=
““, -
db
““. 0
.
““0 1!
solicitudes_amistad
““1 D
.
““D E
FirstOrDefault
““E S
(
““S T
s
““T U
=>
““V X
s
””$ %
.
””% &
	id_emisor
””& /
==
””0 2
senderId
””3 ;
&&
””< >
s
‘‘$ %
.
‘‘% &
id_receptor
‘‘& 1
==
‘‘2 4

receiverId
‘‘5 ?
&&
‘‘@ B
s
’’$ %
.
’’% &
estado
’’& ,
==
’’- /
$str
’’0 ;
)
’’; <
;
’’< =
if
◊◊  "
(
◊◊# $
request
◊◊$ +
==
◊◊, .
null
◊◊/ 3
)
◊◊3 4
{
ÿÿ  !
throw
ŸŸ( -
new
ŸŸ. 1'
InvalidOperationException
ŸŸ2 K
(
ŸŸK L
$strŸŸL É
)ŸŸÉ Ñ
;ŸŸÑ Ö
}
⁄⁄  !
if
‹‹  "
(
‹‹# $
accept
‹‹$ *
)
‹‹* +
{
››  !
bool
ﬁﬁ( ,
	isBlocked
ﬁﬁ- 6
=
ﬁﬁ7 8
db
ﬁﬁ9 ;
.
ﬁﬁ; <
bloqueos
ﬁﬁ< D
.
ﬁﬁD E
Any
ﬁﬁE H
(
ﬁﬁH I
b
ﬁﬁI J
=>
ﬁﬁK M
(
ﬂﬂ, -
b
ﬂﬂ- .
.
ﬂﬂ. /
id_bloqueador
ﬂﬂ/ <
==
ﬂﬂ= ?
senderId
ﬂﬂ@ H
&&
ﬂﬂI K
b
ﬂﬂL M
.
ﬂﬂM N
id_bloqueado
ﬂﬂN Z
==
ﬂﬂ[ ]

receiverId
ﬂﬂ^ h
)
ﬂﬂh i
||
ﬂﬂj l
(
‡‡, -
b
‡‡- .
.
‡‡. /
id_bloqueador
‡‡/ <
==
‡‡= ?

receiverId
‡‡@ J
&&
‡‡K M
b
‡‡N O
.
‡‡O P
id_bloqueado
‡‡P \
==
‡‡] _
senderId
‡‡` h
)
‡‡h i
)
‡‡i j
;
‡‡j k
if
‚‚( *
(
‚‚+ ,
	isBlocked
‚‚, 5
)
‚‚5 6
{
„„( )
throw
‰‰0 5
new
‰‰6 9'
InvalidOperationException
‰‰: S
(
‰‰S T
$str‰‰T Ñ
)‰‰Ñ Ö
;‰‰Ö Ü
}
ÂÂ( )
bool
ÁÁ( ,
friendshipExists
ÁÁ- =
=
ÁÁ> ?
db
ÁÁ@ B
.
ÁÁB C
	amistades
ÁÁC L
.
ÁÁL M
Any
ÁÁM P
(
ÁÁP Q
a
ÁÁQ R
=>
ÁÁS U
(
ËË, -
a
ËË- .
.
ËË. /
id_usuario1
ËË/ :
==
ËË; =
senderId
ËË> F
&&
ËËG I
a
ËËJ K
.
ËËK L
id_usuario2
ËËL W
==
ËËX Z

receiverId
ËË[ e
)
ËËe f
||
ËËg i
(
ÈÈ, -
a
ÈÈ- .
.
ÈÈ. /
id_usuario1
ÈÈ/ :
==
ÈÈ; =

receiverId
ÈÈ> H
&&
ÈÈI K
a
ÈÈL M
.
ÈÈM N
id_usuario2
ÈÈN Y
==
ÈÈZ \
senderId
ÈÈ] e
)
ÈÈe f
)
ÈÈf g
;
ÈÈg h
if
ÎÎ( *
(
ÎÎ+ ,
!
ÎÎ, -
friendshipExists
ÎÎ- =
)
ÎÎ= >
{
ÏÏ( )
db
ÌÌ0 2
.
ÌÌ2 3
	amistades
ÌÌ3 <
.
ÌÌ< =
Add
ÌÌ= @
(
ÌÌ@ A
new
ÌÌA D
	amistades
ÌÌE N
{
ÓÓ0 1
id_usuario1
ÔÔ8 C
=
ÔÔD E
senderId
ÔÔF N
,
ÔÔN O
id_usuario2
8 C
=
D E

receiverId
F P
,
P Q
fecha_amistad
ÒÒ8 E
=
ÒÒF G
DateTime
ÒÒH P
.
ÒÒP Q
Now
ÒÒQ T
}
ÚÚ0 1
)
ÚÚ1 2
;
ÚÚ2 3
}
ÛÛ( )
request
ıı( /
.
ıı/ 0
estado
ıı0 6
=
ıı7 8
$str
ıı9 C
;
ııC D
}
ˆˆ  !
else
˜˜  $
{
¯¯  !
request
˘˘( /
.
˘˘/ 0
estado
˘˘0 6
=
˘˘7 8
$str
˘˘9 D
;
˘˘D E
}
˙˙  !
db
¸¸  "
.
¸¸" #
SaveChanges
¸¸# .
(
¸¸. /
)
¸¸/ 0
;
¸¸0 1
return
˝˝  &
true
˝˝' +
;
˝˝+ ,
}
˛˛ 
}
ˇˇ 
public
ÅÅ 
bool
ÅÅ 
DeleteFriend
ÅÅ (
(
ÅÅ( )
string
ÅÅ) /
username
ÅÅ0 8
,
ÅÅ8 9
string
ÅÅ: @
friendUsername
ÅÅA O
)
ÅÅO P
{
ÇÇ 
int
ÉÉ 
userId
ÉÉ "
=
ÉÉ# $
	_userRepo
ÉÉ% .
.
ÉÉ. /!
GetUserIdByUsername
ÉÉ/ B
(
ÉÉB C
username
ÉÉC K
)
ÉÉK L
;
ÉÉL M
int
ÑÑ 
friendId
ÑÑ $
=
ÑÑ% &
	_userRepo
ÑÑ' 0
.
ÑÑ0 1!
GetUserIdByUsername
ÑÑ1 D
(
ÑÑD E
friendUsername
ÑÑE S
)
ÑÑS T
;
ÑÑT U
return
ÜÜ 
DeleteFriend
ÜÜ +
(
ÜÜ+ ,
userId
ÜÜ, 2
,
ÜÜ2 3
friendId
ÜÜ4 <
)
ÜÜ< =
;
ÜÜ= >
}
áá 
public
ââ 
bool
ââ 
UpdateBlockStatus
ââ -
(
ââ- .
string
ââ. 4
blockerUsername
ââ5 D
,
ââD E
string
ââF L
blockedUsername
ââM \
,
ââ\ ]
bool
ââ^ b
block
ââc h
)
ââh i
{
ää 
int
ãã 
	blockerId
ãã %
=
ãã& '
	_userRepo
ãã( 1
.
ãã1 2!
GetUserIdByUsername
ãã2 E
(
ããE F
blockerUsername
ããF U
)
ããU V
;
ããV W
int
åå 
	blockedId
åå %
=
åå& '
	_userRepo
åå( 1
.
åå1 2!
GetUserIdByUsername
åå2 E
(
ååE F
blockedUsername
ååF U
)
ååU V
;
ååV W
if
éé 
(
éé 
	blockerId
éé %
==
éé& (
	blockedId
éé) 2
)
éé2 3
{
èè 
throw
êê  %
new
êê& )'
InvalidOperationException
êê* C
(
êêC D
$str
êêD p
)
êêp q
;
êêq r
}
ëë 
using
ìì 
(
ìì 
var
ìì "
db
ìì# %
=
ìì& '
CreateDbContext
ìì( 7
(
ìì7 8
)
ìì8 9
)
ìì9 :
{
îî 
if
ïï  "
(
ïï# $
block
ïï$ )
)
ïï) *
{
ññ  !
bool
óó( ,
alreadyBlocked
óó- ;
=
óó< =
db
óó> @
.
óó@ A
bloqueos
óóA I
.
óóI J
Any
óóJ M
(
óóM N
b
óóN O
=>
óóP R
b
óóS T
.
óóT U
id_bloqueador
óóU b
==
óóc e
	blockerId
óóf o
&&
óóp r
b
óós t
.
óót u
id_bloqueadoóóu Å
==óóÇ Ñ
	blockedIdóóÖ é
)óóé è
;óóè ê
if
ôô( *
(
ôô+ ,
alreadyBlocked
ôô, :
)
ôô: ;
{
öö( )
throw
õõ0 5
new
õõ6 9'
InvalidOperationException
õõ: S
(
õõS T
$str
õõT s
)
õõs t
;
õõt u
}
úú( )
var
ûû( + 
existingFriendship
ûû, >
=
ûû? @
db
ûûA C
.
ûûC D
	amistades
ûûD M
.
ûûM N
FirstOrDefault
ûûN \
(
ûû\ ]
a
ûû] ^
=>
ûû_ a
(
üü, -
a
üü- .
.
üü. /
id_usuario1
üü/ :
==
üü; =
	blockerId
üü> G
&&
üüH J
a
üüK L
.
üüL M
id_usuario2
üüM X
==
üüY [
	blockedId
üü\ e
)
üüe f
||
üüg i
(
††, -
a
††- .
.
††. /
id_usuario1
††/ :
==
††; =
	blockedId
††> G
&&
††H J
a
††K L
.
††L M
id_usuario2
††M X
==
††Y [
	blockerId
††\ e
)
††e f
)
††f g
;
††g h
if
¢¢( *
(
¢¢+ , 
existingFriendship
¢¢, >
!=
¢¢? A
null
¢¢B F
)
¢¢F G
{
££( )
db
§§0 2
.
§§2 3
	amistades
§§3 <
.
§§< =
Remove
§§= C
(
§§C D 
existingFriendship
§§D V
)
§§V W
;
§§W X
}
••( )
var
ßß( +
pendingRequests
ßß, ;
=
ßß< =
db
ßß> @
.
ßß@ A!
solicitudes_amistad
ßßA T
.
ßßT U
Where
ßßU Z
(
ßßZ [
s
ßß[ \
=>
ßß] _
(
®®, -
s
®®- .
.
®®. /
	id_emisor
®®/ 8
==
®®9 ;
	blockerId
®®< E
&&
®®F H
s
®®I J
.
®®J K
id_receptor
®®K V
==
®®W Y
	blockedId
®®Z c
)
®®c d
||
®®e g
(
©©, -
s
©©- .
.
©©. /
	id_emisor
©©/ 8
==
©©9 ;
	blockedId
©©< E
&&
©©F H
s
©©I J
.
©©J K
id_receptor
©©K V
==
©©W Y
	blockerId
©©Z c
)
©©c d
)
©©d e
.
©©e f
ToList
©©f l
(
©©l m
)
©©m n
;
©©n o
if
´´( *
(
´´+ ,
pendingRequests
´´, ;
.
´´; <
Any
´´< ?
(
´´? @
)
´´@ A
)
´´A B
{
¨¨( )
db
≠≠0 2
.
≠≠2 3!
solicitudes_amistad
≠≠3 F
.
≠≠F G
RemoveRange
≠≠G R
(
≠≠R S
pendingRequests
≠≠S b
)
≠≠b c
;
≠≠c d
}
ÆÆ( )
db
∞∞( *
.
∞∞* +
bloqueos
∞∞+ 3
.
∞∞3 4
Add
∞∞4 7
(
∞∞7 8
new
∞∞8 ;
bloqueos
∞∞< D
{
±±( )
id_bloqueador
≤≤0 =
=
≤≤> ?
	blockerId
≤≤@ I
,
≤≤I J
id_bloqueado
≥≥0 <
=
≥≥= >
	blockedId
≥≥? H
,
≥≥H I
fecha_bloqueo
¥¥0 =
=
¥¥> ?
DateTime
¥¥@ H
.
¥¥H I
Now
¥¥I L
}
µµ( )
)
µµ) *
;
µµ* +
}
∂∂  !
else
∑∑  $
{
∏∏  !
var
ππ( +
bloqueo
ππ, 3
=
ππ4 5
db
ππ6 8
.
ππ8 9
bloqueos
ππ9 A
.
ππA B
FirstOrDefault
ππB P
(
ππP Q
b
ππQ R
=>
ππS U
b
ππV W
.
ππW X
id_bloqueador
ππX e
==
ππf h
	blockerId
ππi r
&&
ππs u
b
ππv w
.
ππw x
id_bloqueadoππx Ñ
==ππÖ á
	blockedIdππà ë
)ππë í
;ππí ì
if
ªª( *
(
ªª+ ,
bloqueo
ªª, 3
==
ªª4 6
null
ªª7 ;
)
ªª; <
{
ºº( )
throw
ΩΩ0 5
new
ΩΩ6 9'
InvalidOperationException
ΩΩ: S
(
ΩΩS T
$str
ΩΩT ~
)
ΩΩ~ 
;ΩΩ Ä
}
ææ( )
db
¿¿( *
.
¿¿* +
bloqueos
¿¿+ 3
.
¿¿3 4
Remove
¿¿4 :
(
¿¿: ;
bloqueo
¿¿; B
)
¿¿B C
;
¿¿C D
}
¡¡  !
db
√√  "
.
√√" #
SaveChanges
√√# .
(
√√. /
)
√√/ 0
;
√√0 1
return
ƒƒ  &
true
ƒƒ' +
;
ƒƒ+ ,
}
≈≈ 
}
∆∆ 
}
«« 	
}»» ÿ
fC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\IFriendService.cs
	namespace		 	
DamasChinas_Server		
 
{

 
[ 	
ServiceContract	 
] 
public 
	interface 
IFriendService '
{ 	
[ 
OperationContract "
]" #
List 
< 
	FriendDto 
> 

GetFriends  *
(* +
string+ 1
username2 :
): ;
;; <
[ 
OperationContract "
]" #
List 
< 
	FriendDto 
> 
GetFriendRequests  1
(1 2
string2 8
username9 A
)A B
;B C
[ 
OperationContract "
]" #
bool 
SendFriendRequest &
(& '
string' -
senderUsername. <
,< =
string> D
receiverUsernameE U
)U V
;V W
[ 
OperationContract "
]" #
bool 
DeleteFriend !
(! "
string" (
username) 1
,1 2
string3 9
friendUsername: H
)H I
;I J
[ 
OperationContract "
]" #
bool 
UpdateBlockStatus &
(& '
string' -
blockerUsername. =
,= >
string? E
blockedUsernameF U
,U V
boolW [
block\ a
)a b
;b c
[ 
OperationContract "
]" #
bool %
UpdateFriendRequestStatus .
(. /
string/ 5
receiverUsername6 F
,F G
stringH N
senderUsernameO ]
,] ^
bool_ c
acceptd j
)j k
;k l
} 	
}   ‚	
YC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\Message.cs
[ 
DataContract 
] 
public 
class 
Message 
{ 
[ 

DataMember 
] 
public 
string 
UsarnameSender 
{ 
get  #
;# $
set% (
;( )
}* +
[

 

DataMember

 
]

 
public 
string 
DestinationUsername "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int !
IdDestinationUsername !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 

DataMember 
] 
public 
string 
Text 
{ 
get 
; 
set 
; 
}  !
[ 

DataMember 
] 
public 
DateTime 
SendDate 
{ 
get 
;  
set! $
;$ %
}& '
} Û
[C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\FriendDto.cs
	namespace		 	
DamasChinas_Server		
 
.		 
Dtos		 !
{

 
[ 
DataContract 
] 
public 
class 
	FriendDto 
{ 
public 
int	 
IdFriend 
{ 
get 
; 
set  
;  !
}" #
[ 

DataMember 
] 
public 
string	 
Username 
{ 
get 
; 
set  #
;# $
}% &
[ 

DataMember 
] 
public 
bool	 
ConnectionState 
{ 
get  #
;# $
set% (
;( )
}* +
[ 

DataMember 
] 
public 
string	 
Avatar 
{ 
get 
; 
set !
;! "
}# $
} 
} ˘
cC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Services\FriendService.cs
	namespace		 	
DamasChinas_Server		
 
{

 
public 
class 
FriendService "
:# $
IFriendService% 3
{ 	
private 
readonly  
FriendRepository! 1
repo2 6
=7 8
new9 <
FriendRepository= M
(M N
)N O
;O P
public 
List 
< 
	FriendDto %
>% &

GetFriends' 1
(1 2
string2 8
username9 A
)A B
{ 
return 
repo #
.# $

GetFriends$ .
(. /
username/ 7
)7 8
;8 9
} 
public 
List 
< 
	FriendDto %
>% &
GetFriendRequests' 8
(8 9
string9 ?
username@ H
)H I
{ 
return 
repo #
.# $
GetFriendRequests$ 5
(5 6
username6 >
)> ?
;? @
} 
public 
bool 
SendFriendRequest -
(- .
string. 4
senderUsername5 C
,C D
stringE K
receiverUsernameL \
)\ ]
{ 
return 
repo #
.# $
SendFriendRequest$ 5
(5 6
senderUsername6 D
,D E
receiverUsernameF V
)V W
;W X
} 
public 
bool 
DeleteFriend (
(( )
string) /
username0 8
,8 9
string: @
friendUsernameA O
)O P
{ 
return   
repo   #
.  # $
DeleteFriend  $ 0
(  0 1
username  1 9
,  9 :
friendUsername  ; I
)  I J
;  J K
}!! 
public## 
bool## 
UpdateBlockStatus## -
(##- .
string##. 4
blockerUsername##5 D
,##D E
string##F L
blockedUsername##M \
,##\ ]
bool##^ b
block##c h
)##h i
{$$ 
return%% 
repo%% #
.%%# $
UpdateBlockStatus%%$ 5
(%%5 6
blockerUsername%%6 E
,%%E F
blockedUsername%%G V
,%%V W
block%%X ]
)%%] ^
;%%^ _
}&& 
public(( 
bool(( %
UpdateFriendRequestStatus(( 5
(((5 6
string((6 <
receiverUsername((= M
,((M N
string((O U
senderUsername((V d
,((d e
bool((f j
accept((k q
)((q r
{)) 
return** 
repo** #
.**# $%
UpdateFriendRequestStatus**$ =
(**= >
receiverUsername**> N
,**N O
senderUsername**P ^
,**^ _
accept**` f
)**f g
;**g h
}++ 
},, 	
}-- °1
aC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\logic\ChatRepository.cs
	namespace 	
DamasChinas_Server
 
{ 
public 
class 
ChatRepository 
{ 
public		 
void			 
SaveMessage		 
(		 
string		  
usernameSender		! /
,		/ 0
int		1 4
recipientId		5 @
,		@ A
string		B H
texto		I N
)		N O
{

 
var 
senderId 
= 
GetIdByUsername !
(! "
usernameSender" 0
)0 1
;1 2
using 
(	 

var
 
context 
= 
new  
damas_chinasEntities 0
(0 1
)1 2
)2 3
{ 
var 
messageEntity 
= 
new 
mensajes $
{  
id_usuario_remitente 
= 
senderId $
,$ %
id_usuario_destino 
= 
recipientId %
,% &
texto 

= 
texto 
, 
fecha_envio 
= 
DateTime 
. 
Now 
} 
; 
context 
. 
mensajes 
. 
Add 
( 
messageEntity &
)& '
;' (
context 
. 
SaveChanges 
( 
) 
; 
} 
} 
public 
List	 
< 
Message 
> 
GetChatByUsername (
(( )
string) /
usernameSender0 >
,> ?
string@ F
usernameRecipientG X
)X Y
{ 
var 
idSender 
= 
GetIdByUsername !
(! "
usernameSender" 0
)0 1
;1 2
var 
idRecipient 
= 
GetIdByUsername $
($ %
usernameRecipient% 6
)6 7
;7 8
using!! 
(!!	 

var!!
 
context!! 
=!! 
new!!  
damas_chinasEntities!! 0
(!!0 1
)!!1 2
)!!2 3
{"" 
var## 
mensajes## 
=## 
context## 
.## 
mensajes## #
.$$ 
Where$$ 
($$ 
m$$ 
=>$$ 
(%% 
m%% 
.%% 	 
id_usuario_remitente%%	 
==%%  
idSender%%! )
&&%%* ,
m%%- .
.%%. /
id_usuario_destino%%/ A
==%%B D
idRecipient%%E P
)%%P Q
||%%R T
(&& 
m&& 
.&& 	 
id_usuario_remitente&&	 
==&&  
idRecipient&&! ,
&&&&- /
m&&0 1
.&&1 2
id_usuario_destino&&2 D
==&&E G
idSender&&H P
)&&P Q
)'' 
.(( 
OrderBy(( 
((( 
m(( 
=>(( 
m(( 
.(( 
fecha_envio((  
)((  !
.)) 
Select)) 
()) 
m)) 
=>)) 
new)) 
Message)) 
{** 
UsarnameSender++ 
=++ 
m++ 
.++  
id_usuario_remitente++ -
==++. 0
idSender++1 9
?++: ;
usernameSender++< J
:++K L
usernameRecipient++M ^
,++^ _
DestinationUsername,, 
=,, 
m,, 
.,, 
id_usuario_destino,, 0
==,,1 3
idSender,,4 <
?,,= >
usernameSender,,? M
:,,N O
usernameRecipient,,P a
,,,a b
Text-- 

=-- 
m-- 
.-- 
texto-- 
,-- 
SendDate.. 
=.. 
m.. 
... 
fecha_envio.. 
}// 
)// 
.00 
ToList00 
(00 
)00 
;00 
return22 

mensajes22 
;22 
}33 
}44 
public66 
int66	 
GetIdByUsername66 
(66 
string66 #
username66$ ,
)66, -
{77 
if88 
(88 
string88 
.88 
IsNullOrWhiteSpace88  
(88  !
username88! )
)88) *
)88* +
{99 
throw:: 	
new::
 
ArgumentException:: 
(::  
$str::  L
)::L M
;::M N
};; 
using<< 
(<<	 

var<<
 
context<< 
=<< 
new<<  
damas_chinasEntities<< 0
(<<0 1
)<<1 2
)<<2 3
{== 
var>> 
userId>> 
=>> 
context>> 
.>> 
usuarios>> !
.?? 
Where?? 
(?? 
u?? 
=>?? 
u?? 
.?? 
perfiles?? 
.?? 
Any?? 
(??  
p??  !
=>??" $
p??% &
.??& '
username??' /
.??/ 0
ToLower??0 7
(??7 8
)??8 9
==??: <
username??= E
.??E F
ToLower??F M
(??M N
)??N O
)??O P
)??P Q
.@@ 
Select@@ 
(@@ 
u@@ 
=>@@ 
u@@ 
.@@ 

id_usuario@@ 
)@@ 
.AA 
FirstOrDefaultAA 
(AA 
)AA 
;AA 
ifCC 
(CC 
userIdCC 
==CC 
$numCC 
)CC 
{DD 
throwEE 

newEE %
InvalidOperationExceptionEE (
(EE( )
$"EE) +
$strEE+ S
{EES T
usernameEET \
}EE\ ]
$strEE] ^
"EE^ _
)EE_ `
;EE` a
}FF 
returnGG 

userIdGG 
;GG 
}HH 
}II 
}JJ 
}KK ‡
hC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\ISessionCallback.cs
	namespace 	
DamasChinas_Server
 
. 

Interfaces '
{ 
[		 
ServiceContract		 
]		 
public

 
	interface

 
ISessionCallback

 "
{ 
[ 
OperationContract 
] 
void 
SessionExpired 
( 
) 
; 
[ 
OperationContract 
] 
void 
PlayerDisconnected 
( 
string  
nickname! )
)) *
;* +
} 
} £$
eC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Interfaces\ILobbyService.cs
	namespace		 	
DamasChinas_Server		
 
.		 

Interfaces		 '
{

 
public 

	interface 
ILobbyCallback #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
OnMemberJoined 
( 
LobbyMember '
member( .
). /
;/ 0
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
OnMemberLeft 
( 
int 
userId $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
OnMessageReceived 
( 
int "
userId# )
,) *
string+ 1
username2 :
,: ;
string< B
messageC J
,J K
stringL R
utcIsoS Y
)Y Z
;Z [
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
OnLobbyClosed 
( 
string !
reason" (
)( )
;) *
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
OnGameStarted 
( 
string !
code" &
)& '
;' (
} 
[ 
ServiceContract 
( 
SessionMode 
= 
SessionMode !
.! "
Required" *
,* +
CallbackContract 
= 
typeof !
(! "
ILobbyCallback" 0
)0 1
)1 2
]2 3
public   

	interface   
ILobbyService   "
{!! 
["" 	
OperationContract""	 
]"" 
Lobby## 
CreateLobby## 
(## 
int## 

hostUserId## (
,##( )
string##* 0
hostUsername##1 =
,##= >
bool##? C
	isPrivate##D M
)##M N
;##N O
[%% 	
OperationContract%%	 
]%% 
Lobby&& 
	JoinLobby&& 
(&& 
string&& 
code&& #
,&&# $
int&&% (
userId&&) /
,&&/ 0
string&&1 7
username&&8 @
)&&@ A
;&&A B
[(( 	
OperationContract((	 
](( 
bool)) 

LeaveLobby)) 
()) 
string)) 
code)) #
,))# $
int))% (
userId))) /
)))/ 0
;))0 1
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 
SendLobbyMessage,, 
(,, 
string,, $
code,,% )
,,,) *
int,,+ .
userId,,/ 5
,,,5 6
string,,7 =
username,,> F
,,,F G
string,,H N
message,,O V
),,V W
;,,W X
[.. 	
OperationContract..	 
].. 
Lobby// 
GetLobby// 
(// 
string// 
code// "
)//" #
;//# $
[11 	
OperationContract11	 
]11 
bool22 

KickMember22 
(22 
string22 
code22 #
,22# $
int22% (
targetUserId22) 5
)225 6
;226 7
[44 	
OperationContract44	 
]44 
bool55 
	BanMember55 
(55 
string55 
code55 "
,55" #
int55$ '
targetUserId55( 4
)554 5
;555 6
[77 	
OperationContract77	 
]77 
List88 
<88 
Lobby88 
>88 
GetPublicLobbies88 $
(88$ %
)88% &
;88& '
[;; 	
OperationContract;;	 
];; 
bool<< 
	StartGame<< 
(<< 
string<< 
code<< "
)<<" #
;<<# $
}== 
}>> ›
\C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\PlayerMove.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{		 
public 

class 

PlayerMove 
{ 
private 
readonly 
IReadOnlyList &
<& '
HexCoordinate' 4
>4 5
_path6 ;
;; <
public 
PlayerColor 
Player !
{" #
get$ '
;' (
}) *
public 
IReadOnlyList 
< 
HexCoordinate *
>* +
Path, 0
{ 	
get 
{ 
return 
_path 
; 
} 
} 	
public 
HexCoordinate 
Origin #
{ 	
get 
{ 
return 
_path 
. 
First "
(" #
)# $
;$ %
}   
}!! 	
public## 
HexCoordinate## 
Destination## (
{$$ 	
get%% 
{&& 
return'' 
_path'' 
.'' 
Last'' !
(''! "
)''" #
;''# $
}(( 
})) 	
public++ 

PlayerMove++ 
(++ 
PlayerColor++ %
player++& ,
,++, -
IEnumerable++. 9
<++9 :
HexCoordinate++: G
>++G H
path++I M
)++M N
{,, 	
if-- 
(-- 
path-- 
==-- 
null-- 
)-- 
{.. 
throw// 
new// !
ArgumentNullException// /
(/// 0
nameof//0 6
(//6 7
path//7 ;
)//; <
)//< =
;//= >
}00 
var22 
coordinates22 
=22 
path22 "
.22" #
ToList22# )
(22) *
)22* +
;22+ ,
if33 
(33 
coordinates33 
.33 
Count33 !
<33" #
MinimumMoveLength33$ 5
)335 6
{44 
throw55 
new55 
ArgumentException55 +
(55+ ,
$str55, g
,55g h
nameof55i o
(55o p
path55p t
)55t u
)55u v
;55v w
}66 
Player88 
=88 
player88 
;88 
_path99 
=99 
new99 
ReadOnlyCollection99 *
<99* +
HexCoordinate99+ 8
>998 9
(999 :
coordinates99: E
)99E F
;99F G
}:: 	
private<< 
const<< 
int<< 
MinimumMoveLength<< +
=<<, -
$num<<. /
;<</ 0
}== 
}>> ¸J
_C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\HexCoordinate.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

struct 
HexCoordinate 
:  !

IEquatable" ,
<, -
HexCoordinate- :
>: ;
{ 
private 
const 
int 
DistanceDivisor )
=* +
$num, -
;- .
private 
const 
int 
HashSeed "
=# $
$num% '
;' (
private 
const 
int 

HashFactor $
=% &
$num' )
;) *
private 
const 
int 
HalfDivisor %
=& '
$num( )
;) *
public 
static 
readonly 
IReadOnlyList ,
<, -
HexCoordinate- :
>: ;

Directions< F
=G H
newI L
[L M
]M N
{ 	
new 
HexCoordinate 
( 
$num 
,  
-! "
$num" #
,# $
$num% &
)& '
,' (
new 
HexCoordinate 
( 
$num 
,  
$num! "
," #
-$ %
$num% &
)& '
,' (
new 
HexCoordinate 
( 
$num 
,  
$num! "
," #
-$ %
$num% &
)& '
,' (
new 
HexCoordinate 
( 
- 
$num  
,  !
$num" #
,# $
$num% &
)& '
,' (
new 
HexCoordinate 
( 
- 
$num  
,  !
$num" #
,# $
$num% &
)& '
,' (
new 
HexCoordinate 
( 
$num 
,  
-! "
$num" #
,# $
$num% &
)& '
} 	
;	 

public 
int 
X 
{ 
get 
; 
} 
public 
int 
Y 
{ 
get 
; 
} 
public 
int 
Z 
{ 
get 
; 
} 
public!! 
HexCoordinate!! 
(!! 
int!!  
x!!! "
,!!" #
int!!$ '
y!!( )
,!!) *
int!!+ .
z!!/ 0
)!!0 1
{"" 	
if## 
(## 
x## 
+## 
y## 
+## 
z## 
!=## 
$num## 
)## 
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, Z
,%%Z [
nameof%%\ b
(%%b c
z%%c d
)%%d e
)%%e f
;%%f g
}&& 
X(( 
=(( 
x(( 
;(( 
Y)) 
=)) 
y)) 
;)) 
Z** 
=** 
z** 
;** 
}++ 	
public-- 
static-- 
HexCoordinate-- #
operator--$ ,
+--- .
(--. /
HexCoordinate--/ <
left--= A
,--A B
HexCoordinate--C P
right--Q V
)--V W
{.. 	
return// 
new// 
HexCoordinate// $
(//$ %
left//% )
.//) *
X//* +
+//, -
right//. 3
.//3 4
X//4 5
,//5 6
left//7 ;
.//; <
Y//< =
+//> ?
right//@ E
.//E F
Y//F G
,//G H
left//I M
.//M N
Z//N O
+//P Q
right//R W
.//W X
Z//X Y
)//Y Z
;//Z [
}00 	
public22 
static22 
HexCoordinate22 #
operator22$ ,
-22- .
(22. /
HexCoordinate22/ <
left22= A
,22A B
HexCoordinate22C P
right22Q V
)22V W
{33 	
return44 
new44 
HexCoordinate44 $
(44$ %
left44% )
.44) *
X44* +
-44, -
right44. 3
.443 4
X444 5
,445 6
left447 ;
.44; <
Y44< =
-44> ?
right44@ E
.44E F
Y44F G
,44G H
left44I M
.44M N
Z44N O
-44P Q
right44R W
.44W X
Z44X Y
)44Y Z
;44Z [
}55 	
public77 
static77 
bool77 
operator77 #
==77$ &
(77& '
HexCoordinate77' 4
left775 9
,779 :
HexCoordinate77; H
right77I N
)77N O
{88 	
return99 
left99 
.99 
Equals99 
(99 
right99 $
)99$ %
;99% &
}:: 	
public<< 
static<< 
bool<< 
operator<< #
!=<<$ &
(<<& '
HexCoordinate<<' 4
left<<5 9
,<<9 :
HexCoordinate<<; H
right<<I N
)<<N O
{== 	
return>> 
!>> 
left>> 
.>> 
Equals>> 
(>>  
right>>  %
)>>% &
;>>& '
}?? 	
publicAA 
intAA 

DistanceToAA 
(AA 
HexCoordinateAA +
otherAA, 1
)AA1 2
{BB 	
returnCC 
(CC 
MathCC 
.CC 
AbsCC 
(CC 
XCC 
-CC  
otherCC! &
.CC& '
XCC' (
)CC( )
+CC* +
MathCC, 0
.CC0 1
AbsCC1 4
(CC4 5
YCC5 6
-CC7 8
otherCC9 >
.CC> ?
YCC? @
)CC@ A
+CCB C
MathCCD H
.CCH I
AbsCCI L
(CCL M
ZCCM N
-CCO P
otherCCQ V
.CCV W
ZCCW X
)CCX Y
)CCY Z
/CC[ \
DistanceDivisorCC] l
;CCl m
}DD 	
publicFF 
boolFF 
EqualsFF 
(FF 
HexCoordinateFF (
otherFF) .
)FF. /
{GG 	
returnHH 
XHH 
==HH 
otherHH 
.HH 
XHH 
&&HH  "
YHH# $
==HH% '
otherHH( -
.HH- .
YHH. /
&&HH0 2
ZHH3 4
==HH5 7
otherHH8 =
.HH= >
ZHH> ?
;HH? @
}II 	
publicKK 
overrideKK 
boolKK 
EqualsKK #
(KK# $
objectKK$ *
objKK+ .
)KK. /
{LL 	
returnMM 
objMM 
isMM 
HexCoordinateMM '

coordinateMM( 2
&&MM3 5
EqualsMM6 <
(MM< =

coordinateMM= G
)MMG H
;MMH I
}NN 	
publicPP 
overridePP 
intPP 
GetHashCodePP '
(PP' (
)PP( )
{QQ 	
	uncheckedRR 
{SS 
intTT 
hashTT 
=TT 
HashSeedTT #
;TT# $
hashUU 
=UU 
hashUU 
*UU 

HashFactorUU (
+UU) *
XUU+ ,
;UU, -
hashVV 
=VV 
hashVV 
*VV 

HashFactorVV (
+VV) *
YVV+ ,
;VV, -
hashWW 
=WW 
hashWW 
*WW 

HashFactorWW (
+WW) *
ZWW+ ,
;WW, -
returnXX 
hashXX 
;XX 
}YY 
}ZZ 	
public\\ 
override\\ 
string\\ 
ToString\\ '
(\\' (
)\\( )
{]] 	
return^^ 
$"^^ 
$str^^ 
{^^ 
X^^ 
}^^ 
$str^^ 
{^^ 
Y^^ 
}^^ 
$str^^  
{^^  !
Z^^! "
}^^" #
$str^^# $
"^^$ %
;^^% &
}__ 	
publicaa 
HexCoordinateaa 
Halfaa !
(aa! "
)aa" #
{bb 	
ifcc 
(cc 
(cc 
Xcc 
%cc 
HalfDivisorcc  
)cc  !
!=cc" $
$numcc% &
||cc' )
(cc* +
Ycc+ ,
%cc- .
HalfDivisorcc/ :
)cc: ;
!=cc< >
$numcc? @
||ccA C
(ccD E
ZccE F
%ccG H
HalfDivisorccI T
)ccT U
!=ccV X
$numccY Z
)ccZ [
{dd 
throwee 
newee %
InvalidOperationExceptionee 3
(ee3 4
$stree4 w
)eew x
;eex y
}ff 
returnhh 
newhh 
HexCoordinatehh $
(hh$ %
Xhh% &
/hh' (
HalfDivisorhh) 4
,hh4 5
Yhh6 7
/hh8 9
HalfDivisorhh: E
,hhE F
ZhhG H
/hhI J
HalfDivisorhhK V
)hhV W
;hhW X
}ii 	
}jj 
}kk œ
WC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\Piece.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

class 
Piece 
{ 
public 
PlayerColor 
Color  
{! "
get# &
;& '
}( )
public 
Piece 
( 
PlayerColor  
color! &
)& '
{ 	
if 
( 
! 
Enum 
. 
	IsDefined 
(  
typeof  &
(& '
PlayerColor' 2
)2 3
,3 4
color5 :
): ;
); <
{ 
throw 
new '
ArgumentOutOfRangeException 5
(5 6
nameof6 <
(< =
color= B
)B C
)C D
;D E
} 
Color 
= 
color 
; 
} 	
} 
} È
]C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\PlayerColor.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public		 

enum		 
PlayerColor		 
{

 
Red 
, 
Green 
, 
Blue 
, 
Yellow 
, 
Orange 
, 
Purple 
} 
} Ô
XC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\Player.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

class 
Player 
{ 
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
PlayerColor 
Color  
{! "
get# &
;& '
}( )
public 
Player 
( 
string 
id 
,  
string! '
name( ,
,, -
PlayerColor. 9
color: ?
)? @
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
id* ,
), -
)- .
{ 
throw 
new 
ArgumentException +
(+ ,
$str, P
,P Q
nameofR X
(X Y
idY [
)[ \
)\ ]
;] ^
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
name* .
). /
)/ 0
{ 
throw 
new 
ArgumentException +
(+ ,
$str, J
,J K
nameofL R
(R S
nameS W
)W X
)X Y
;Y Z
} 
Id 
= 
id 
; 
Name 
= 
name 
; 
Color   
=   
color   
;   
}!! 	
}"" 
}## ⁄
\C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\MoveResult.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

class 

MoveResult 
{ 
private 

MoveResult 
( 
bool 
	succeeded  )
,) *
string+ 1
errorMessage2 >
,> ?
PlayerColor@ K
?K L
winnerM S
)S T
{ 	
	Succeeded 
= 
	succeeded !
;! "
ErrorMessage 
= 
errorMessage '
;' (
Winner 
= 
winner 
; 
} 	
public 
bool 
	Succeeded 
{ 
get  #
;# $
}% &
public 
string 
ErrorMessage "
{# $
get% (
;( )
}* +
public 
PlayerColor 
? 
Winner "
{# $
get% (
;( )
}* +
public 
static 

MoveResult  
Success! (
(( )
PlayerColor) 4
?4 5
winner6 <
== >
null? C
)C D
{ 	
return 
new 

MoveResult !
(! "
true" &
,& '
null( ,
,, -
winner. 4
)4 5
;5 6
} 	
public   
static   

MoveResult    
Error  ! &
(  & '
string  ' -
message  . 5
)  5 6
{!! 	
return"" 
new"" 

MoveResult"" !
(""! "
false""" '
,""' (
message"") 0
,""0 1
null""2 6
)""6 7
;""7 8
}## 	
}$$ 
}%% ’
YC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\HexCell.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

class 
HexCell 
{ 
private 
Piece 
_piece 
; 
public 
HexCoordinate 

Coordinate '
{( )
get* -
;- .
}/ 0
public 
string 
Zone 
{ 
get  
;  !
}" #
public 
bool 
IsValid 
{ 
get !
;! "
set# &
;& '
}( )
=* +
true, 0
;0 1
public 
bool 

IsOccupied 
{ 	
get 
{ 
return 
_piece 
!=  
null! %
;% &
} 
} 	
public 
Piece 
Piece 
{ 	
get   
{!! 
return"" 
_piece"" 
;"" 
}## 
}$$ 	
public&& 
HexCell&& 
(&& 
HexCoordinate&& $

coordinate&&% /
,&&/ 0
string&&1 7
zone&&8 <
)&&< =
{'' 	

Coordinate(( 
=(( 

coordinate(( #
;((# $
Zone)) 
=)) 
zone)) 
??)) 
throw))  
new))! $!
ArgumentNullException))% :
()): ;
nameof)); A
())A B
zone))B F
)))F G
)))G H
;))H I
}** 	
public,, 
void,, 

PlacePiece,, 
(,, 
Piece,, $
piece,,% *
),,* +
{-- 	
if.. 
(.. 
piece.. 
==.. 
null.. 
).. 
{// 
throw00 
new00 !
ArgumentNullException00 /
(00/ 0
nameof000 6
(006 7
piece007 <
)00< =
)00= >
;00> ?
}11 
if33 
(33 
_piece33 
!=33 
null33 
)33 
{44 
throw55 
new55 %
InvalidOperationException55 3
(553 4
$str554 S
)55S T
;55T U
}66 
_piece88 
=88 
piece88 
;88 
}99 	
public;; 
Piece;; 
RemovePiece;;  
(;;  !
);;! "
{<< 	
if== 
(== 
_piece== 
==== 
null== 
)== 
{>> 
throw?? 
new?? %
InvalidOperationException?? 3
(??3 4
$str??4 X
)??X Y
;??Y Z
}@@ 
PieceBB 
pieceBB 
=BB 
_pieceBB  
;BB  !
_pieceCC 
=CC 
nullCC 
;CC 
returnDD 
pieceDD 
;DD 
}EE 	
publicGG 
overrideGG 
stringGG 
ToStringGG '
(GG' (
)GG( )
{HH 	
returnII 
stringII 
.II 
FormatII  
(II  !
$strII! ,
,II, -

CoordinateII. 8
,II8 9
ZoneII: >
)II> ?
;II? @
}JJ 	
}KK 
}LL ≤´
eC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\ChineseCheckersGame.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{		 
public 

class 
ChineseCheckersGame $
{ 
private 
const 
int 
MinimumPlayers (
=) *
$num+ ,
;, -
private 
const 
int 
MaximumPlayers (
=) *
$num+ ,
;, -
private 
const 
int 
SingleStepLength *
=+ ,
$num- .
;. /
private 
const 
int 
FirstTurnIndex (
=) *
$num+ ,
;, -
private 
const 
int !
FirstDestinationIndex /
=0 1
$num2 3
;3 4
private 
const 
int 
LastIndexOffset )
=* +
$num, -
;- .
private 
const 
int 
NextTurnOffset (
=) *
$num+ ,
;, -
private 
readonly 

Dictionary #
<# $
PlayerColor$ /
,/ 0
Player1 7
>7 8
_players9 A
;A B
private 
readonly 
List 
< 
PlayerColor )
>) *

_turnOrder+ 5
;5 6
private 
readonly 

Dictionary #
<# $
PlayerColor$ /
,/ 0
PlayerColor1 <
>< =
_targetZones> J
;J K
public 
ChineseCheckersGame "
(" #
IEnumerable# .
<. /
Player/ 5
>5 6
players7 >
)> ?
{ 	
if 
( 
players 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
players7 >
)> ?
)? @
;@ A
}   
var"" 

playerList"" 
="" 
players"" $
.""$ %
ToList""% +
(""+ ,
)"", -
;""- .
if## 
(## 

playerList## 
.## 
Count##  
<##! "
MinimumPlayers### 1
||##2 4

playerList##5 ?
.##? @
Count##@ E
>##F G
MaximumPlayers##H V
)##V W
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$"%%, .
$str%%. I
{%%I J
MinimumPlayers%%J X
}%%X Y
$str%%Y ^
{%%^ _
MaximumPlayers%%_ m
}%%m n
$str%%n w
"%%w x
,%%x y
nameof	%%z Ä
(
%%Ä Å
players
%%Å à
)
%%à â
)
%%â ä
;
%%ä ã
}&& 
_players(( 
=(( 

playerList(( !
.((! "
ToDictionary((" .
(((. /
player((/ 5
=>((6 8
player((9 ?
.((? @
Color((@ E
)((E F
;((F G
if)) 
()) 
_players)) 
.)) 
Count)) 
!=)) !

playerList))" ,
.)), -
Count))- 2
)))2 3
{** 
throw++ 
new++ 
ArgumentException++ +
(+++ ,
$str++, S
,++S T
nameof++U [
(++[ \
players++\ c
)++c d
)++d e
;++e f
},, 
Board.. 
=.. 
new..  
ChineseCheckersBoard.. ,
(.., -
)..- .
;... /

_turnOrder// 
=// 
_players// !
.//! "
Keys//" &
.//& '
OrderBy//' .
(//. /
color/// 4
=>//5 7
color//8 =
)//= >
.//> ?
ToList//? E
(//E F
)//F G
;//G H
CurrentTurn00 
=00 

_turnOrder00 $
[00$ %
FirstTurnIndex00% 3
]003 4
;004 5
_targetZones11 
=11 
CreateTargetZones11 ,
(11, -
)11- .
;11. /
InitializePieces33 
(33 
)33 
;33 
}44 	
public66  
ChineseCheckersBoard66 #
Board66$ )
{66* +
get66, /
;66/ 0
}661 2
public88 
PlayerColor88 
CurrentTurn88 &
{88' (
get88) ,
;88, -
private88. 5
set886 9
;889 :
}88; <
public:: 
PlayerColor:: 
?:: 
Winner:: "
{::# $
get::% (
;::( )
private::* 1
set::2 5
;::5 6
}::7 8
public<< 
IReadOnlyCollection<< "
<<<" #
Player<<# )
><<) *
Players<<+ 2
{== 	
get>> 
{?? 
return@@ 
_players@@ 
.@@  
Values@@  &
.@@& '
ToList@@' -
(@@- .
)@@. /
.@@/ 0

AsReadOnly@@0 :
(@@: ;
)@@; <
;@@< =
}AA 
}BB 	
publicDD 

MoveResultDD 
TryApplyMoveDD &
(DD& '

PlayerMoveDD' 1
moveDD2 6
)DD6 7
{EE 	
ifFF 
(FF 
moveFF 
==FF 
nullFF 
)FF 
{GG 
throwHH 
newHH !
ArgumentNullExceptionHH /
(HH/ 0
nameofHH0 6
(HH6 7
moveHH7 ;
)HH; <
)HH< =
;HH= >
}II 
ifKK 
(KK 
WinnerKK 
.KK 
HasValueKK 
)KK  
{LL 
returnMM 

MoveResultMM !
.MM! "
ErrorMM" '
(MM' (
$strMM( I
)MMI J
;MMJ K
}NN 
ifPP 
(PP 
!PP 
_playersPP 
.PP 
ContainsKeyPP %
(PP% &
movePP& *
.PP* +
PlayerPP+ 1
)PP1 2
)PP2 3
{QQ 
returnRR 

MoveResultRR !
.RR! "
ErrorRR" '
(RR' (
$strRR( O
)RRO P
;RRP Q
}SS 
ifUU 
(UU 
moveUU 
.UU 
PlayerUU 
!=UU 
CurrentTurnUU *
)UU* +
{VV 
returnWW 

MoveResultWW !
.WW! "
ErrorWW" '
(WW' (
$strWW( F
)WWF G
;WWG H
}XX 
ifZZ 
(ZZ 
!ZZ 
ValidateMoveZZ 
(ZZ 
moveZZ "
,ZZ" #
outZZ$ '
stringZZ( .
errorMessageZZ/ ;
)ZZ; <
)ZZ< =
{[[ 
return\\ 

MoveResult\\ !
.\\! "
Error\\" '
(\\' (
errorMessage\\( 4
)\\4 5
;\\5 6
}]] 
ExecuteMove__ 
(__ 
move__ 
)__ 
;__ 
ifaa 
(aa 
HasWonaa 
(aa 
moveaa 
.aa 
Playeraa "
)aa" #
)aa# $
{bb 
Winnercc 
=cc 
movecc 
.cc 
Playercc $
;cc$ %
returndd 

MoveResultdd !
.dd! "
Successdd" )
(dd) *
Winnerdd* 0
)dd0 1
;dd1 2
}ee 
AdvanceTurngg 
(gg 
)gg 
;gg 
returnhh 

MoveResulthh 
.hh 
Successhh %
(hh% &
)hh& '
;hh' (
}ii 	
publickk 
IReadOnlyDictionarykk "
<kk" #
HexCoordinatekk# 0
,kk0 1
PlayerColorkk2 =
?kk= >
>kk> ?
GetBoardStatekk@ M
(kkM N
)kkN O
{ll 	
varmm 
snapshotmm 
=mm 
Boardmm  
.mm  !
Cellsmm! &
.mm& '
ToDictionarymm' 3
(mm3 4
cellnn 
=>nn 
cellnn  
.nn  !

Coordinatenn! +
,nn+ ,
celloo 
=>oo 
celloo  
.oo  !

IsOccupiedoo! +
?oo, -
(oo. /
PlayerColoroo/ :
?oo: ;
)oo; <
celloo< @
.oo@ A
PieceooA F
.ooF G
ColorooG L
:ooM N
nullooO S
)ooS T
;ooT U
returnpp 
newpp 
ReadOnlyDictionarypp )
<pp) *
HexCoordinatepp* 7
,pp7 8
PlayerColorpp9 D
?ppD E
>ppE F
(ppF G
snapshotppG O
)ppO P
;ppP Q
}qq 	
publicss 
PlayerColorss 
GetTargetZoness (
(ss( )
PlayerColorss) 4
playerss5 ;
)ss; <
{tt 	
ifuu 
(uu 
!uu 
_targetZonesuu 
.uu 
TryGetValueuu )
(uu) *
playeruu* 0
,uu0 1
outuu2 5
PlayerColoruu6 A

targetZoneuuB L
)uuL M
)uuM N
{vv 
throwww 
newww 
ArgumentExceptionww +
(ww+ ,
$strww, `
,ww` a
nameofwwb h
(wwh i
playerwwi o
)wwo p
)wwp q
;wwq r
}xx 
returnzz 

targetZonezz 
;zz 
}{{ 	
public}} 
bool}} 
HasWon}} 
(}} 
PlayerColor}} &
player}}' -
)}}- .
{~~ 	
if 
( 
! 
_targetZones 
. 
TryGetValue )
() *
player* 0
,0 1
out2 5
PlayerColor6 A

targetZoneB L
)L M
)M N
{
ÄÄ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
return
ÑÑ 
Board
ÑÑ 
.
ÑÑ 
GetZoneCells
ÑÑ %
(
ÑÑ% &

targetZone
ÑÑ& 0
)
ÑÑ0 1
.
ÖÖ 
All
ÖÖ 
(
ÖÖ 
cell
ÖÖ 
=>
ÖÖ  
cell
ÖÖ! %
.
ÖÖ% &

IsOccupied
ÖÖ& 0
&&
ÖÖ1 3
cell
ÖÖ4 8
.
ÖÖ8 9
Piece
ÖÖ9 >
.
ÖÖ> ?
Color
ÖÖ? D
==
ÖÖE G
player
ÖÖH N
)
ÖÖN O
;
ÖÖO P
}
ÜÜ 	
private
àà 

Dictionary
àà 
<
àà 
PlayerColor
àà &
,
àà& '
PlayerColor
àà( 3
>
àà3 4
CreateTargetZones
àà5 F
(
ààF G
)
ààG H
{
ââ 	
return
ää 
new
ää 

Dictionary
ää !
<
ää! "
PlayerColor
ää" -
,
ää- .
PlayerColor
ää/ :
>
ää: ;
{
ãã 
{
åå  !
PlayerColor
åå" -
.
åå- .
Red
åå. 1
,
åå1 2
PlayerColor
åå3 >
.
åå> ?
Green
åå? D
}
ååE F
,
ååF G
{
çç  !
PlayerColor
çç" -
.
çç- .
Green
çç. 3
,
çç3 4
PlayerColor
çç5 @
.
çç@ A
Red
ççA D
}
ççE F
,
ççF G
{
éé  !
PlayerColor
éé" -
.
éé- .
Blue
éé. 2
,
éé2 3
PlayerColor
éé4 ?
.
éé? @
Yellow
éé@ F
}
ééG H
,
ééH I
{
èè  !
PlayerColor
èè" -
.
èè- .
Yellow
èè. 4
,
èè4 5
PlayerColor
èè6 A
.
èèA B
Blue
èèB F
}
èèG H
,
èèH I
{
êê  !
PlayerColor
êê" -
.
êê- .
Orange
êê. 4
,
êê4 5
PlayerColor
êê6 A
.
êêA B
Purple
êêB H
}
êêI J
,
êêJ K
{
ëë  !
PlayerColor
ëë" -
.
ëë- .
Purple
ëë. 4
,
ëë4 5
PlayerColor
ëë6 A
.
ëëA B
Orange
ëëB H
}
ëëI J
}
íí 
;
íí 
}
ìì 	
private
ïï 
void
ïï 
InitializePieces
ïï %
(
ïï% &
)
ïï& '
{
ññ 	
foreach
óó 
(
óó 
PlayerColor
óó  
color
óó! &
in
óó' )
_players
óó* 2
.
óó2 3
Keys
óó3 7
)
óó7 8
{
òò 
foreach
ôô 
(
ôô 
HexCell
ôô  
cell
ôô! %
in
ôô& (
Board
ôô) .
.
ôô. /
GetZoneCells
ôô/ ;
(
ôô; <
color
ôô< A
)
ôôA B
)
ôôB C
{
öö 
cell
õõ 
.
õõ 

PlacePiece
õõ #
(
õõ# $
new
õõ$ '
Piece
õõ( -
(
õõ- .
color
õõ. 3
)
õõ3 4
)
õõ4 5
;
õõ5 6
}
úú 
}
ùù 
}
ûû 	
private
†† 
bool
†† 
ValidateMove
†† !
(
††! "

PlayerMove
††" ,
move
††- 1
,
††1 2
out
††3 6
string
††7 =
errorMessage
††> J
)
††J K
{
°° 	
errorMessage
¢¢ 
=
¢¢ 
null
¢¢ 
;
¢¢  
if
§§ 
(
§§ 
!
§§ 
Board
§§ 
.
§§ 

TryGetCell
§§ !
(
§§! "
move
§§" &
.
§§& '
Origin
§§' -
,
§§- .
out
§§/ 2
HexCell
§§3 :

originCell
§§; E
)
§§E F
)
§§F G
{
•• 
errorMessage
¶¶ 
=
¶¶ 
$str
¶¶ M
;
¶¶M N
return
ßß 
false
ßß 
;
ßß 
}
®® 
if
™™ 
(
™™ 
!
™™ 

originCell
™™ 
.
™™ 

IsOccupied
™™ &
||
™™' )

originCell
™™* 4
.
™™4 5
Piece
™™5 :
.
™™: ;
Color
™™; @
!=
™™A C
move
™™D H
.
™™H I
Player
™™I O
)
™™O P
{
´´ 
errorMessage
¨¨ 
=
¨¨ 
$str
¨¨ ]
;
¨¨] ^
return
≠≠ 
false
≠≠ 
;
≠≠ 
}
ÆÆ 
var
∞∞ 
visited
∞∞ 
=
∞∞ 
new
∞∞ 
HashSet
∞∞ %
<
∞∞% &
HexCoordinate
∞∞& 3
>
∞∞3 4
{
∞∞5 6
move
∞∞7 ;
.
∞∞; <
Origin
∞∞< B
}
∞∞C D
;
∞∞D E
bool
±± 
performedJump
±± 
=
±±  
false
±±! &
;
±±& '
HexCoordinate
≤≤ 
currentPosition
≤≤ )
=
≤≤* +
move
≤≤, 0
.
≤≤0 1
Origin
≤≤1 7
;
≤≤7 8
for
¥¥ 
(
¥¥ 
int
¥¥ 
index
¥¥ 
=
¥¥ #
FirstDestinationIndex
¥¥ 2
;
¥¥2 3
index
¥¥4 9
<
¥¥: ;
move
¥¥< @
.
¥¥@ A
Path
¥¥A E
.
¥¥E F
Count
¥¥F K
;
¥¥K L
index
¥¥M R
++
¥¥R T
)
¥¥T U
{
µµ 
HexCoordinate
∂∂ 
destination
∂∂ )
=
∂∂* +
move
∂∂, 0
.
∂∂0 1
Path
∂∂1 5
[
∂∂5 6
index
∂∂6 ;
]
∂∂; <
;
∂∂< =
if
∏∏ 
(
∏∏ 
!
∏∏ 
visited
∏∏ 
.
∏∏ 
Add
∏∏  
(
∏∏  !
destination
∏∏! ,
)
∏∏, -
)
∏∏- .
{
ππ 
errorMessage
∫∫  
=
∫∫! "
$str
∫∫# O
;
∫∫O P
return
ªª 
false
ªª  
;
ªª  !
}
ºº 
if
ææ 
(
ææ 
!
ææ 
Board
ææ 
.
ææ 

TryGetCell
ææ %
(
ææ% &
destination
ææ& 1
,
ææ1 2
out
ææ3 6
HexCell
ææ7 >
destinationCell
ææ? N
)
ææN O
)
ææO P
{
øø 
errorMessage
¿¿  
=
¿¿! "
$str
¿¿# W
;
¿¿W X
return
¡¡ 
false
¡¡  
;
¡¡  !
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
destinationCell
ƒƒ #
.
ƒƒ# $

IsOccupied
ƒƒ$ .
)
ƒƒ. /
{
≈≈ 
errorMessage
∆∆  
=
∆∆! "
$str
∆∆# G
;
∆∆G H
return
«« 
false
««  
;
««  !
}
»» 
bool
   

isAdjacent
   
=
    !
Board
  " '
.
  ' (
IsAdjacentMove
  ( 6
(
  6 7
currentPosition
  7 F
,
  F G
destination
  H S
)
  S T
;
  T U
bool
ÀÀ 
isJump
ÀÀ 
=
ÀÀ 
Board
ÀÀ #
.
ÀÀ# $

IsJumpMove
ÀÀ$ .
(
ÀÀ. /
currentPosition
ÀÀ/ >
,
ÀÀ> ?
destination
ÀÀ@ K
,
ÀÀK L
out
ÀÀM P
HexCoordinate
ÀÀQ ^
middleCoordinate
ÀÀ_ o
)
ÀÀo p
;
ÀÀp q
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 

isAdjacent
ÕÕ 
&&
ÕÕ  "
!
ÕÕ# $
isJump
ÕÕ$ *
)
ÕÕ* +
{
ŒŒ 
errorMessage
œœ  
=
œœ! "
$str
œœ# [
;
œœ[ \
return
–– 
false
––  
;
––  !
}
—— 
if
”” 
(
”” 

isAdjacent
”” 
)
”” 
{
‘‘ 
if
’’ 
(
’’ 
move
’’ 
.
’’ 
Path
’’ !
.
’’! "
Count
’’" '
>
’’( )
SingleStepLength
’’* :
)
’’: ;
{
÷÷ 
errorMessage
◊◊ $
=
◊◊% &
$str
◊◊' f
;
◊◊f g
return
ÿÿ 
false
ÿÿ $
;
ÿÿ$ %
}
ŸŸ 
if
€€ 
(
€€ 
index
€€ 
!=
€€  
move
€€! %
.
€€% &
Path
€€& *
.
€€* +
Count
€€+ 0
-
€€1 2
LastIndexOffset
€€3 B
)
€€B C
{
‹‹ 
errorMessage
›› $
=
››% &
$str
››' Z
;
››Z [
return
ﬁﬁ 
false
ﬁﬁ $
;
ﬁﬁ$ %
}
ﬂﬂ 
}
‡‡ 
if
‚‚ 
(
‚‚ 
isJump
‚‚ 
)
‚‚ 
{
„„ 
if
‰‰ 
(
‰‰ 
!
‰‰ 
Board
‰‰ 
.
‰‰ 

TryGetCell
‰‰ )
(
‰‰) *
middleCoordinate
‰‰* :
,
‰‰: ;
out
‰‰< ?
HexCell
‰‰@ G
jumpCell
‰‰H P
)
‰‰P Q
||
‰‰R T
!
‰‰U V
jumpCell
‰‰V ^
.
‰‰^ _

IsOccupied
‰‰_ i
)
‰‰i j
{
ÂÂ 
errorMessage
ÊÊ $
=
ÊÊ% &
$str
ÊÊ' a
;
ÊÊa b
return
ÁÁ 
false
ÁÁ $
;
ÁÁ$ %
}
ËË 
performedJump
ÍÍ !
=
ÍÍ" #
true
ÍÍ$ (
;
ÍÍ( )
}
ÎÎ 
currentPosition
ÌÌ 
=
ÌÌ  !
destination
ÌÌ" -
;
ÌÌ- .
}
ÓÓ 
if
 
(
 
move
 
.
 
Path
 
.
 
Count
 
>
  !
SingleStepLength
" 2
&&
3 5
!
6 7
performedJump
7 D
)
D E
{
ÒÒ 
errorMessage
ÚÚ 
=
ÚÚ 
$str
ÚÚ Q
;
ÚÚQ R
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÙÙ 
return
ˆˆ 
true
ˆˆ 
;
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ 
ExecuteMove
˘˘  
(
˘˘  !

PlayerMove
˘˘! +
move
˘˘, 0
)
˘˘0 1
{
˙˙ 	
HexCell
˚˚ 

originCell
˚˚ 
=
˚˚  
Board
˚˚! &
.
˚˚& '
GetCell
˚˚' .
(
˚˚. /
move
˚˚/ 3
.
˚˚3 4
Origin
˚˚4 :
)
˚˚: ;
;
˚˚; <
Piece
¸¸ 
piece
¸¸ 
=
¸¸ 

originCell
¸¸ $
.
¸¸$ %
RemovePiece
¸¸% 0
(
¸¸0 1
)
¸¸1 2
;
¸¸2 3
HexCell
˝˝ 
destinationCell
˝˝ #
=
˝˝$ %
Board
˝˝& +
.
˝˝+ ,
GetCell
˝˝, 3
(
˝˝3 4
move
˝˝4 8
.
˝˝8 9
Destination
˝˝9 D
)
˝˝D E
;
˝˝E F
destinationCell
˛˛ 
.
˛˛ 

PlacePiece
˛˛ &
(
˛˛& '
piece
˛˛' ,
)
˛˛, -
;
˛˛- .
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
AdvanceTurn
ÅÅ  
(
ÅÅ  !
)
ÅÅ! "
{
ÇÇ 	
int
ÉÉ 
currentIndex
ÉÉ 
=
ÉÉ 

_turnOrder
ÉÉ )
.
ÉÉ) *
IndexOf
ÉÉ* 1
(
ÉÉ1 2
CurrentTurn
ÉÉ2 =
)
ÉÉ= >
;
ÉÉ> ?
currentIndex
ÑÑ 
=
ÑÑ 
(
ÑÑ 
currentIndex
ÑÑ (
+
ÑÑ) *
NextTurnOffset
ÑÑ+ 9
)
ÑÑ9 :
%
ÑÑ; <

_turnOrder
ÑÑ= G
.
ÑÑG H
Count
ÑÑH M
;
ÑÑM N
CurrentTurn
ÖÖ 
=
ÖÖ 

_turnOrder
ÖÖ $
[
ÖÖ$ %
currentIndex
ÖÖ% 1
]
ÖÖ1 2
;
ÖÖ2 3
}
ÜÜ 	
}
áá 
}àà £ê
fC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Game\ChineseCheckersBoard.cs
	namespace 	
DamasChinas_Server
 
. 
Game !
{ 
public 

class  
ChineseCheckersBoard %
{ 
private 
const 
int 
DefaultBoardRadius ,
=- .
$num/ 0
;0 1
private 
const 
int 
MinimumRadius '
=( )
$num* +
;+ ,
private 
const 
int 
AdjacentDistance *
=+ ,
$num- .
;. /
private 
const 
int 
JumpDistance &
=' (
$num) *
;* +
private 
const 
int 
HalfDivisor %
=& '
$num( )
;) *
private 
const 
int 
FirstDistance '
=( )
$num* +
;+ ,
private 
const 
string 
CenterZoneName +
=, -
$str. 6
;6 7
private 
static 
readonly 
IReadOnlyList  -
<- .
(. /
HexCoordinate/ <
	Direction= F
,F G
PlayerColorH S
ZoneT X
)X Y
>Y Z
ZoneDefinitions[ j
=k l
new 
List 
< 
( 
HexCoordinate '
,' (
PlayerColor) 4
)4 5
>5 6
{ 
(  !
new! $
HexCoordinate% 2
(2 3
$num3 4
,4 5
-6 7
$num7 8
,8 9
$num: ;
); <
,< =
PlayerColor> I
.I J
RedJ M
)M N
,N O
(  !
new! $
HexCoordinate% 2
(2 3
-3 4
$num4 5
,5 6
$num7 8
,8 9
$num: ;
); <
,< =
PlayerColor> I
.I J
GreenJ O
)O P
,P Q
(  !
new! $
HexCoordinate% 2
(2 3
$num3 4
,4 5
-6 7
$num7 8
,8 9
$num: ;
); <
,< =
PlayerColor> I
.I J
BlueJ N
)N O
,O P
(  !
new! $
HexCoordinate% 2
(2 3
$num3 4
,4 5
$num6 7
,7 8
-9 :
$num: ;
); <
,< =
PlayerColor> I
.I J
YellowJ P
)P Q
,Q R
(  !
new! $
HexCoordinate% 2
(2 3
$num3 4
,4 5
$num6 7
,7 8
-9 :
$num: ;
); <
,< =
PlayerColor> I
.I J
OrangeJ P
)P Q
,Q R
(  !
new! $
HexCoordinate% 2
(2 3
-3 4
$num4 5
,5 6
$num7 8
,8 9
$num: ;
); <
,< =
PlayerColor> I
.I J
PurpleJ P
)P Q
} 
; 
private!! 
readonly!! 

Dictionary!! #
<!!# $
HexCoordinate!!$ 1
,!!1 2
HexCell!!3 :
>!!: ;
_cells!!< B
;!!B C
public##  
ChineseCheckersBoard## #
(### $
int##$ '
radius##( .
=##/ 0
DefaultBoardRadius##1 C
)##C D
{$$ 	
if%% 
(%% 
radius%% 
<%% 
MinimumRadius%% &
)%%& '
{&& 
throw'' 
new'' '
ArgumentOutOfRangeException'' 5
(''5 6
nameof''6 <
(''< =
radius''= C
)''C D
)''D E
;''E F
}(( 
_cells** 
=** !
GenerateCompleteBoard** *
(*** +
radius**+ 1
)**1 2
.**2 3
ToDictionary**3 ?
(**? @
cell**@ D
=>**E G
cell**H L
.**L M

Coordinate**M W
)**W X
;**X Y
}++ 	
public-- 
IEnumerable-- 
<-- 
HexCell-- "
>--" #
Cells--$ )
{.. 	
get// 
{00 
return11 
_cells11 
.11 
Values11 $
;11$ %
}22 
}33 	
public55 
bool55 

TryGetCell55 
(55 
HexCoordinate55 ,

coordinate55- 7
,557 8
out559 <
HexCell55= D
cell55E I
)55I J
{66 	
return77 
_cells77 
.77 
TryGetValue77 %
(77% &

coordinate77& 0
,770 1
out772 5
cell776 :
)77: ;
;77; <
}88 	
public:: 
HexCell:: 
GetCell:: 
(:: 
HexCoordinate:: ,

coordinate::- 7
)::7 8
{;; 	
if<< 
(<< 
!<< 
_cells<< 
.<< 
TryGetValue<< #
(<<# $

coordinate<<$ .
,<<. /
out<<0 3
HexCell<<4 ;
cell<<< @
)<<@ A
)<<A B
{== 
throw>> 
new>> 
ArgumentException>> +
(>>+ ,
$str>>, R
,>>R S
nameof>>T Z
(>>Z [

coordinate>>[ e
)>>e f
)>>f g
;>>g h
}?? 
returnAA 
cellAA 
;AA 
}BB 	
publicDD 
boolDD 
ContainsCoordinateDD &
(DD& '
HexCoordinateDD' 4

coordinateDD5 ?
)DD? @
{EE 	
returnFF 
_cellsFF 
.FF 
ContainsKeyFF %
(FF% &

coordinateFF& 0
)FF0 1
;FF1 2
}GG 	
publicII 
IEnumerableII 
<II 
HexCellII "
>II" #
GetZoneCellsII$ 0
(II0 1
PlayerColorII1 <
zoneII= A
)IIA B
{JJ 	
stringKK 
zoneNameKK 
=KK 
zoneKK "
.KK" #
ToStringKK# +
(KK+ ,
)KK, -
;KK- .
returnLL 
_cellsLL 
.LL 
ValuesLL  
.LL  !
WhereLL! &
(LL& '
cellLL' +
=>LL, .
stringLL/ 5
.LL5 6
EqualsLL6 <
(LL< =
cellLL= A
.LLA B
ZoneLLB F
,LLF G
zoneNameLLH P
,LLP Q
StringComparisonLLR b
.LLb c
OrdinalIgnoreCaseLLc t
)LLt u
)LLu v
;LLv w
}MM 	
publicOO 
boolOO 
IsAdjacentMoveOO "
(OO" #
HexCoordinateOO# 0
originOO1 7
,OO7 8
HexCoordinateOO9 F
destinationOOG R
)OOR S
{PP 	
returnQQ 
originQQ 
.QQ 

DistanceToQQ $
(QQ$ %
destinationQQ% 0
)QQ0 1
==QQ2 4
AdjacentDistanceQQ5 E
;QQE F
}RR 	
publicTT 
boolTT 

IsJumpMoveTT 
(TT 
HexCoordinateTT ,
originTT- 3
,TT3 4
HexCoordinateTT5 B
destinationTTC N
,TTN O
outTTP S
HexCoordinateTTT a
middleTTb h
)TTh i
{UU 	
intVV 
distanceVV 
=VV 
originVV !
.VV! "

DistanceToVV" ,
(VV, -
destinationVV- 8
)VV8 9
;VV9 :
ifWW 
(WW 
distanceWW 
!=WW 
JumpDistanceWW (
)WW( )
{XX 
middleYY 
=YY 
defaultYY  
(YY  !
HexCoordinateYY! .
)YY. /
;YY/ 0
returnZZ 
falseZZ 
;ZZ 
}[[ 
HexCoordinate]] 

difference]] $
=]]% &
destination]]' 2
-]]3 4
origin]]5 ;
;]]; <
if^^ 
(^^ 
(^^ 
Math^^ 
.^^ 
Abs^^ 
(^^ 

difference^^ $
.^^$ %
X^^% &
)^^& '
%^^( )
HalfDivisor^^* 5
)^^5 6
!=^^7 9
$num^^: ;
||^^< >
(__ 
Math__ 
.__ 
Abs__ 
(__ 

difference__ (
.__( )
Y__) *
)__* +
%__, -
HalfDivisor__. 9
)__9 :
!=__; =
$num__> ?
||__@ B
(`` 
Math`` 
.`` 
Abs`` 
(`` 

difference`` (
.``( )
Z``) *
)``* +
%``, -
HalfDivisor``. 9
)``9 :
!=``; =
$num``> ?
)``? @
{aa 
middlebb 
=bb 
defaultbb  
(bb  !
HexCoordinatebb! .
)bb. /
;bb/ 0
returncc 
falsecc 
;cc 
}dd 
middleff 
=ff 
originff 
+ff 
newff !
HexCoordinateff" /
(ff/ 0

differenceff0 :
.ff: ;
Xff; <
/ff= >
HalfDivisorff? J
,ffJ K

differenceffL V
.ffV W
YffW X
/ffY Z
HalfDivisorff[ f
,fff g

differenceffh r
.ffr s
Zffs t
/ffu v
HalfDivisor	ffw Ç
)
ffÇ É
;
ffÉ Ñ
returngg 
truegg 
;gg 
}hh 	
publicjj 
voidjj 
	MovePiecejj 
(jj 
HexCoordinatejj +
originjj, 2
,jj2 3
HexCoordinatejj4 A
destinationjjB M
)jjM N
{kk 	
HexCellll 

originCellll 
=ll  
GetCellll! (
(ll( )
originll) /
)ll/ 0
;ll0 1
HexCellmm 
destinationCellmm #
=mm$ %
GetCellmm& -
(mm- .
destinationmm. 9
)mm9 :
;mm: ;
ifoo 
(oo 
!oo 

originCelloo 
.oo 

IsOccupiedoo &
)oo& '
{pp 
throwqq 
newqq %
InvalidOperationExceptionqq 3
(qq3 4
$strqq4 [
)qq[ \
;qq\ ]
}rr 
iftt 
(tt 
destinationCelltt 
.tt  

IsOccupiedtt  *
)tt* +
{uu 
throwvv 
newvv %
InvalidOperationExceptionvv 3
(vv3 4
$strvv4 W
)vvW X
;vvX Y
}ww 
Pieceyy 
pieceyy 
=yy 

originCellyy $
.yy$ %
RemovePieceyy% 0
(yy0 1
)yy1 2
;yy2 3
destinationCellzz 
.zz 

PlacePiecezz &
(zz& '
piecezz' ,
)zz, -
;zz- .
}{{ 	
public}} 
IEnumerable}} 
<}} 
HexCoordinate}} (
>}}( )
GetNeighbors}}* 6
(}}6 7
HexCoordinate}}7 D
origin}}E K
)}}K L
{~~ 	
foreach 
( 
HexCoordinate "
	direction# ,
in- /
HexCoordinate0 =
.= >

Directions> H
)H I
{
ÄÄ 
HexCoordinate
ÅÅ 
neighbor
ÅÅ &
=
ÅÅ' (
origin
ÅÅ) /
+
ÅÅ0 1
	direction
ÅÅ2 ;
;
ÅÅ; <
if
ÇÇ 
(
ÇÇ  
ContainsCoordinate
ÇÇ &
(
ÇÇ& '
neighbor
ÇÇ' /
)
ÇÇ/ 0
)
ÇÇ0 1
{
ÉÉ 
yield
ÑÑ 
return
ÑÑ  
neighbor
ÑÑ! )
;
ÑÑ) *
}
ÖÖ 
}
ÜÜ 
}
áá 	
private
ââ 
IEnumerable
ââ 
<
ââ 
HexCell
ââ #
>
ââ# $#
GenerateCompleteBoard
ââ% :
(
ââ: ;
int
ââ; >
radius
ââ? E
)
ââE F
{
ää 	
var
ãã 
cells
ãã 
=
ãã 
new
ãã 
List
ãã  
<
ãã  !
HexCell
ãã! (
>
ãã( )
(
ãã) *
)
ãã* +
;
ãã+ ,
for
çç 
(
çç 
int
çç 
x
çç 
=
çç 
-
çç 
radius
çç  
;
çç  !
x
çç" #
<=
çç$ &
radius
çç' -
;
çç- .
x
çç/ 0
++
çç0 2
)
çç2 3
{
éé 
for
èè 
(
èè 
int
èè 
y
èè 
=
èè 
-
èè 
radius
èè $
;
èè$ %
y
èè& '
<=
èè( *
radius
èè+ 1
;
èè1 2
y
èè3 4
++
èè4 6
)
èè6 7
{
êê 
int
ëë 
z
ëë 
=
ëë 
-
ëë 
x
ëë 
-
ëë  
y
ëë! "
;
ëë" #
if
íí 
(
íí 
Math
íí 
.
íí 
Abs
íí  
(
íí  !
z
íí! "
)
íí" #
<=
íí$ &
radius
íí' -
)
íí- .
{
ìì 
cells
îî 
.
îî 
Add
îî !
(
îî! "
new
îî" %
HexCell
îî& -
(
îî- .
new
îî. 1
HexCoordinate
îî2 ?
(
îî? @
x
îî@ A
,
îîA B
y
îîC D
,
îîD E
z
îîF G
)
îîG H
,
îîH I
CenterZoneName
îîJ X
)
îîX Y
)
îîY Z
;
îîZ [
}
ïï 
}
ññ 
}
óó 
foreach
ôô 
(
ôô 
var
ôô 
(
ôô 
	direction
ôô #
,
ôô# $
zone
ôô% )
)
ôô) *
in
ôô+ -
ZoneDefinitions
ôô. =
)
ôô= >
{
öö 

AddZoneTip
õõ 
(
õõ 
cells
õõ  
,
õõ  !
radius
õõ" (
,
õõ( )
	direction
õõ* 3
,
õõ3 4
zone
õõ5 9
)
õõ9 :
;
õõ: ;
}
úú 
return
ûû 
cells
ûû 
;
ûû 
}
üü 	
private
°° 
void
°° 

AddZoneTip
°° 
(
°°  
List
°°  $
<
°°$ %
HexCell
°°% ,
>
°°, -
cells
°°. 3
,
°°3 4
int
°°5 8
radius
°°9 ?
,
°°? @
HexCoordinate
°°A N
	direction
°°O X
,
°°X Y
PlayerColor
°°Z e
zone
°°f j
)
°°j k
{
¢¢ 	
for
££ 
(
££ 
int
££ 
distance
££ 
=
££ 
FirstDistance
££  -
;
££- .
distance
££/ 7
<=
££8 :
radius
££; A
;
££A B
distance
££C K
++
££K M
)
££M N
{
§§ 
int
•• 
offsetX
•• 
=
•• 
	direction
•• '
.
••' (
X
••( )
*
••* +
distance
••, 4
;
••4 5
int
¶¶ 
offsetY
¶¶ 
=
¶¶ 
	direction
¶¶ '
.
¶¶' (
Y
¶¶( )
*
¶¶* +
distance
¶¶, 4
;
¶¶4 5
int
ßß 
offsetZ
ßß 
=
ßß 
	direction
ßß '
.
ßß' (
Z
ßß( )
*
ßß* +
distance
ßß, 4
;
ßß4 5
for
©© 
(
©© 
int
©© 
x
©© 
=
©© 
-
©© 
radius
©© $
+
©©% &
distance
©©' /
;
©©/ 0
x
©©1 2
<=
©©3 5
radius
©©6 <
-
©©= >
distance
©©? G
;
©©G H
x
©©I J
++
©©J L
)
©©L M
{
™™ 
for
´´ 
(
´´ 
int
´´ 
y
´´ 
=
´´  
-
´´! "
radius
´´" (
+
´´) *
distance
´´+ 3
;
´´3 4
y
´´5 6
<=
´´7 9
radius
´´: @
-
´´A B
distance
´´C K
;
´´K L
y
´´M N
++
´´N P
)
´´P Q
{
¨¨ 
int
≠≠ 
z
≠≠ 
=
≠≠ 
-
≠≠  !
x
≠≠! "
-
≠≠# $
y
≠≠% &
;
≠≠& '
if
ÆÆ 
(
ÆÆ 
Math
ÆÆ  
.
ÆÆ  !
Abs
ÆÆ! $
(
ÆÆ$ %
z
ÆÆ% &
)
ÆÆ& '
<=
ÆÆ( *
radius
ÆÆ+ 1
-
ÆÆ2 3
distance
ÆÆ4 <
)
ÆÆ< =
{
ØØ 
int
∞∞ 
newX
∞∞  $
=
∞∞% &
x
∞∞' (
+
∞∞) *
offsetX
∞∞+ 2
;
∞∞2 3
int
±± 
newY
±±  $
=
±±% &
y
±±' (
+
±±) *
offsetY
±±+ 2
;
±±2 3
int
≤≤ 
newZ
≤≤  $
=
≤≤% &
z
≤≤' (
+
≤≤) *
offsetZ
≤≤+ 2
;
≤≤2 3
var
≥≥ 

coordinate
≥≥  *
=
≥≥+ ,
new
≥≥- 0
HexCoordinate
≥≥1 >
(
≥≥> ?
newX
≥≥? C
,
≥≥C D
newY
≥≥E I
,
≥≥I J
newZ
≥≥K O
)
≥≥O P
;
≥≥P Q
if
µµ 
(
µµ  
!
µµ  !
cells
µµ! &
.
µµ& '
Exists
µµ' -
(
µµ- .
cell
µµ. 2
=>
µµ3 5
cell
µµ6 :
.
µµ: ;

Coordinate
µµ; E
==
µµF H

coordinate
µµI S
)
µµS T
)
µµT U
{
∂∂ 
cells
∑∑  %
.
∑∑% &
Add
∑∑& )
(
∑∑) *
new
∑∑* -
HexCell
∑∑. 5
(
∑∑5 6

coordinate
∑∑6 @
,
∑∑@ A
zone
∑∑B F
.
∑∑F G
ToString
∑∑G O
(
∑∑O P
)
∑∑P Q
)
∑∑Q R
)
∑∑R S
;
∑∑S T
}
∏∏ 
}
ππ 
}
∫∫ 
}
ªª 
}
ºº 
}
ΩΩ 	
}
ææ 
}øø 

YC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\UserDto.cs
	namespace 	
DamasChinas_Server
 
. 
Dtos !
{ 
[ 
DataContract 
] 
public 
class 
UserDto 
{ 
[ 

DataMember 
] 
public		 
string			 
Name		 
{		 
get		 
;		 
set		 
;		  
}		! "
[ 

DataMember 
] 
public 
string	 
LastName 
{ 
get 
; 
set  #
;# $
}% &
[ 

DataMember 
] 
public 
string	 
Email 
{ 
get 
; 
set  
;  !
}" #
[ 

DataMember 
] 
public 
string	 
Password 
{ 
get 
; 
set  #
;# $
}% &
[ 

DataMember 
] 
public 
string	 
Username 
{ 
get 
; 
set  #
;# $
}% &
} 
} é
WC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\Lobby.cs
	namespace 	
DamasChinas_Server
 
. 
Dtos !
{ 
public		 

class		 
Lobby		 
{

 
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 

HostUserId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	IsPrivate 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
	CreatedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
DateTime2 :
.: ;
UtcNow; A
;A B
public 
List 
< 
LobbyMember 
>  
Members! (
{) *
get+ .
;. /
}0 1
=2 3
new4 7
List8 <
<< =
LobbyMember= H
>H I
(I J
)J K
;K L
public 
List 
< 
int 
> 
BannedUsers $
{% &
get' *
;* +
}, -
=. /
new0 3
List4 8
<8 9
int9 <
>< =
(= >
)> ?
;? @
} 
public 

class 
LobbyMember 
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsHost 
{ 
get  
;  !
set" %
;% &
}' (
} 
} î	
^C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Dtos\LoginRequest.cs
	namespace 	
DamasChinas_Server
 
. 
Dtos !
{ 
public 
class 
LoginRequest 
{ 
public 
string	 
Username 
{ 
get 
; 
set  #
;# $
}% &
public 
string	 
Password 
{ 
get 
; 
set  #
;# $
}% &
} 
public		 
class		 
LoginResult		 
{

 
public 
int	 
	IdUsuario 
{ 
get 
; 
set !
;! "
}# $
public 
string	 
Username 
{ 
get 
; 
set  #
;# $
}% &
public 
bool	 
Success 
{ 
get 
; 
set  
;  !
}" #
} 
} Ü
fC:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Contracts\OperationResult.cs
	namespace		 	
DamasChinas_Server		
 
.		 
	Contracts		 &
{

 
[ 
DataContract 
] 
public 

sealed 
class 
OperationResult '
{ 
[ 	

DataMember	 
] 
public 
bool 
Success 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
MessageCode 
Code 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
string 
TechnicalDetail %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ”
_C:\Projects\DamasChinas\DamasChinas\DamasChinas_Server\DamasChinas_Server\Common\MessageCode.cs
	namespace 	
DamasChinas_Server
 
. 
Common #
{ 
public		 

enum		 
MessageCode		 
{

 
Success 
= 
$num 
, #
LoginInvalidCredentials 
=  !
$num" &
,& '
UserDuplicateEmail 
= 
$num !
,! "
UserNotFound 
= 
$num 
, 
MatchCreationFailed 
= 
$num "
," #
ServerUnavailable 
= 
$num  
,  !
NetworkLatency   
=   
$num   
,   
UnknownError!! 
=!! 
$num!! 
,!! 
EmptyCredentials&& 
=&& 
$num&& 
,&&  
PasswordsDontMatch'' 
='' 
$num'' !
,''! "
InvalidPassword(( 
=(( 
$num(( 
,(( 
UsernameEmpty)) 
=)) 
$num)) 
,)) 
UserProfileNotFound** 
=** 
$num** "
,**" #
FriendsLoadError++ 
=++ 
$num++ 
,++  
InvalidEmail,, 
=,, 
$num,, 
,,, 
FieldLengthExceeded-- 
=-- 
$num-- "
,--" #
ChatOpenError.. 
=.. 
$num.. 
,.. 
NavigationError// 
=// 
$num// 
,// 
SoundVolumeInvalid00 
=00 
$num00 !
,00! " 
OperationInterrupted11 
=11 
$num11 #
,11# $
CodeSendingError22 
=22 
$num22 
,22   
CodeSentSuccessfully33 
=33 
$num33 #
,33# $
ChatUnavailable44 
=44 
$num44 
,44  
SoundSettingsUpdated99 
=99 
$num99 #
,99# $
SoundSettingsError:: 
=:: 
$num:: !
,::! "
};; 
}<< 