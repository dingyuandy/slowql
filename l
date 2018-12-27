-----------------------------------------------------------------------------
Info file generated by Happy Version 1.19.9 from .\src\SlowQL\SQL\Parser.y
-----------------------------------------------------------------------------

state 62 contains 1 shift/reduce conflicts.
state 121 contains 1 shift/reduce conflicts.

terminal asc is unused

-----------------------------------------------------------------------------
Grammar
-----------------------------------------------------------------------------
	%start_parseTokens -> SQL                          (0)
	SQL -> SQLStatement ';'                            (1)
	SQLStatement -> CreateDatabase                     (2)
	SQLStatement -> DropDatabase                       (3)
	SQLStatement -> CreateTable                        (4)
	SQLStatement -> DropTable                          (5)
	SQLStatement -> UseDatabase                        (6)
	SQLStatement -> ShowDatabases                      (7)
	SQLStatement -> ShowDatabase                       (8)
	SQLStatement -> SelectStmt                         (9)
	SQLStatement -> UpdateStmt                         (10)
	SQLStatement -> InsertStmt                         (11)
	SQLStatement -> DeleteStmt                         (12)
	SQLStatement -> CreateIndex                        (13)
	SQLStatement -> DropIndex                          (14)
	SQLStatement -> ShowTables                         (15)
	SQLStatement -> DescribeTable                      (16)
	CreateDatabase -> create database IDENTIFIER       (17)
	DropDatabase -> drop database IDENTIFIER           (18)
	CreateTable -> create table IDENTIFIER '(' DomainList ')'   (19)
	DomainList -> DomainDesc                           (20)
	DomainList -> DomainDesc ',' DomainList            (21)
	DomainDesc -> IDENTIFIER char MaxLength Nullable   (22)
	DomainDesc -> IDENTIFIER int MaxLength Nullable    (23)
	DomainDesc -> IDENTIFIER float Nullable            (24)
	DomainDesc -> IDENTIFIER date Nullable             (25)
	DomainDesc -> primary key IDENTIFIER               (26)
	DomainDesc -> foreign key '(' IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER ')'   (27)
	MaxLength ->                                       (28)
	MaxLength -> '(' INT ')'                           (29)
	Nullable ->                                        (30)
	Nullable -> not null                               (31)
	DropTable -> drop table IDENTIFIER                 (32)
	UseDatabase -> use database IDENTIFIER             (33)
	ShowDatabases -> show databases                    (34)
	ShowDatabase -> show database                      (35)
	ShowTables -> show tables                          (36)
	DescribeTable -> desc IDENTIFIER                   (37)
	InsertStmt -> insert into IDENTIFIER values '(' ValueList ')'   (38)
	ValueList -> Value                                 (39)
	ValueList -> Value ',' ValueList                   (40)
	Value -> STRING                                    (41)
	Value -> INT                                       (42)
	Value -> null                                      (43)
	TableList -> IDENTIFIER                            (44)
	TableList -> IDENTIFIER ',' TableList              (45)
	IsNull -> null                                     (46)
	IsNull -> not null                                 (47)
	WhereClause -> Column Op Expr                      (48)
	WhereClause -> Column is IsNull                    (49)
	WhereClause -> WhereClause and WhereClause         (50)
	Column -> IDENTIFIER                               (51)
	Column -> IDENTIFIER '.' IDENTIFIER                (52)
	Expr -> Column                                     (53)
	Expr -> Value                                      (54)
	Op -> '='                                          (55)
	Op -> '<>'                                         (56)
	Op -> '<='                                         (57)
	Op -> '>='                                         (58)
	Op -> '<'                                          (59)
	Op -> '>'                                          (60)
	ColumnList -> Column                               (61)
	ColumnList -> ColumnList ',' ColumnList            (62)
	IdtList -> IDENTIFIER                              (63)
	IdtList -> IDENTIFIER ',' IdtList                  (64)
	SelectStmt -> select ColumnList from TableList where WhereClause   (65)
	UpdateStmt -> update IDENTIFIER set '(' SetClause ')' where WhereClause   (66)
	DeleteStmt -> delete from IDENTIFIER where WhereClause   (67)
	SetClause -> Assignment                            (68)
	SetClause -> Assignment ',' SetClause              (69)
	Assignment -> IDENTIFIER '=' Value                 (70)
	CreateIndex -> create index IDENTIFIER IdtList     (71)
	DropIndex -> drop index IDENTIFIER IdtList         (72)

-----------------------------------------------------------------------------
Terminals
-----------------------------------------------------------------------------
	create         { TokenCreate }
	drop           { TokenDrop }
	select         { TokenSelect }
	delete         { TokenDelete }
	insert         { TokenInsert }
	update         { TokenUpdate }
	from           { TokenFrom }
	where          { TokenWhere }
	';'            { TokenSemicolon }
	','            { TokenComma }
	IDENTIFIER     { TokenIdentifier $$ }
	STRING         { TokenString $$ }
	INT            { TokenInteger $$ }
	database       { TokenDatabase }
	table          { TokenTable }
	index          { TokenIndex }
	use            { TokenUse }
	'('            { TokenOB }
	')'            { TokenCB }
	show           { TokenShow }
	databases      { TokenDatabases }
	int            { TokenInt }
	char           { TokenChar }
	float          { TokenFloat }
	date           { TokenDate }
	primary        { TokenPrimary }
	key            { TokenKey }
	not            { TokenNot }
	null           { TokenNull }
	tables         { TokenTables }
	into           { TokenInto }
	values         { TokenValues }
	set            { TokenSet }
	is             { TokenIs }
	desc           { TokenDesc }
	asc            { TokenAsc }
	and            { TokenAnd }
	foreign        { TokenForeign }
	references     { TokenReferences }
	'='            { TokenEq }
	'<>'           { TokenNeq }
	'<='           { TokenLeq }
	'>='           { TokenGeq }
	'<'            { TokenLt }
	'>'            { TokenGt }
	'.'            { TokenDot }

-----------------------------------------------------------------------------
Non-terminals
-----------------------------------------------------------------------------
	%start_parseTokens rule  0
	SQL             rule  1
	SQLStatement    rules 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
	CreateDatabase  rule  17
	DropDatabase    rule  18
	CreateTable     rule  19
	DomainList      rules 20, 21
	DomainDesc      rules 22, 23, 24, 25, 26, 27
	MaxLength       rules 28, 29
	Nullable        rules 30, 31
	DropTable       rule  32
	UseDatabase     rule  33
	ShowDatabases   rule  34
	ShowDatabase    rule  35
	ShowTables      rule  36
	DescribeTable   rule  37
	InsertStmt      rule  38
	ValueList       rules 39, 40
	Value           rules 41, 42, 43
	TableList       rules 44, 45
	IsNull          rules 46, 47
	WhereClause     rules 48, 49, 50
	Column          rules 51, 52
	Expr            rules 53, 54
	Op              rules 55, 56, 57, 58, 59, 60
	ColumnList      rules 61, 62
	IdtList         rules 63, 64
	SelectStmt      rule  65
	UpdateStmt      rule  66
	DeleteStmt      rule  67
	SetClause       rules 68, 69
	Assignment      rule  70
	CreateIndex     rule  71
	DropIndex       rule  72

-----------------------------------------------------------------------------
States
-----------------------------------------------------------------------------
State 0


	create         shift, and enter state 18
	drop           shift, and enter state 19
	select         shift, and enter state 20
	delete         shift, and enter state 21
	insert         shift, and enter state 22
	update         shift, and enter state 23
	use            shift, and enter state 24
	show           shift, and enter state 25
	desc           shift, and enter state 26

	SQL            goto state 27
	SQLStatement   goto state 2
	CreateDatabase goto state 3
	DropDatabase   goto state 4
	CreateTable    goto state 5
	DropTable      goto state 6
	UseDatabase    goto state 7
	ShowDatabases  goto state 8
	ShowDatabase   goto state 9
	ShowTables     goto state 10
	DescribeTable  goto state 11
	InsertStmt     goto state 12
	SelectStmt     goto state 13
	UpdateStmt     goto state 14
	DeleteStmt     goto state 15
	CreateIndex    goto state 16
	DropIndex      goto state 17

State 1


	create         shift, and enter state 18
	drop           shift, and enter state 19
	select         shift, and enter state 20
	delete         shift, and enter state 21
	insert         shift, and enter state 22
	update         shift, and enter state 23
	use            shift, and enter state 24
	show           shift, and enter state 25
	desc           shift, and enter state 26

	SQLStatement   goto state 2
	CreateDatabase goto state 3
	DropDatabase   goto state 4
	CreateTable    goto state 5
	DropTable      goto state 6
	UseDatabase    goto state 7
	ShowDatabases  goto state 8
	ShowDatabase   goto state 9
	ShowTables     goto state 10
	DescribeTable  goto state 11
	InsertStmt     goto state 12
	SelectStmt     goto state 13
	UpdateStmt     goto state 14
	DeleteStmt     goto state 15
	CreateIndex    goto state 16
	DropIndex      goto state 17

State 2

	SQL -> SQLStatement . ';'                           (rule 1)

	';'            shift, and enter state 45


State 3

	SQLStatement -> CreateDatabase .                    (rule 2)

	';'            reduce using rule 2


State 4

	SQLStatement -> DropDatabase .                      (rule 3)

	';'            reduce using rule 3


State 5

	SQLStatement -> CreateTable .                       (rule 4)

	';'            reduce using rule 4


State 6

	SQLStatement -> DropTable .                         (rule 5)

	';'            reduce using rule 5


State 7

	SQLStatement -> UseDatabase .                       (rule 6)

	';'            reduce using rule 6


State 8

	SQLStatement -> ShowDatabases .                     (rule 7)

	';'            reduce using rule 7


State 9

	SQLStatement -> ShowDatabase .                      (rule 8)

	';'            reduce using rule 8


State 10

	SQLStatement -> ShowTables .                        (rule 15)

	';'            reduce using rule 15


State 11

	SQLStatement -> DescribeTable .                     (rule 16)

	';'            reduce using rule 16


State 12

	SQLStatement -> InsertStmt .                        (rule 11)

	';'            reduce using rule 11


State 13

	SQLStatement -> SelectStmt .                        (rule 9)

	';'            reduce using rule 9


State 14

	SQLStatement -> UpdateStmt .                        (rule 10)

	';'            reduce using rule 10


State 15

	SQLStatement -> DeleteStmt .                        (rule 12)

	';'            reduce using rule 12


State 16

	SQLStatement -> CreateIndex .                       (rule 13)

	';'            reduce using rule 13


State 17

	SQLStatement -> DropIndex .                         (rule 14)

	';'            reduce using rule 14


State 18

	CreateDatabase -> create . database IDENTIFIER      (rule 17)
	CreateTable -> create . table IDENTIFIER '(' DomainList ')'    (rule 19)
	CreateIndex -> create . index IDENTIFIER IdtList    (rule 71)

	database       shift, and enter state 42
	table          shift, and enter state 43
	index          shift, and enter state 44


State 19

	DropDatabase -> drop . database IDENTIFIER          (rule 18)
	DropTable -> drop . table IDENTIFIER                (rule 32)
	DropIndex -> drop . index IDENTIFIER IdtList        (rule 72)

	database       shift, and enter state 39
	table          shift, and enter state 40
	index          shift, and enter state 41


State 20

	SelectStmt -> select . ColumnList from TableList where WhereClause    (rule 65)

	IDENTIFIER     shift, and enter state 38

	Column         goto state 36
	ColumnList     goto state 37

State 21

	DeleteStmt -> delete . from IDENTIFIER where WhereClause    (rule 67)

	from           shift, and enter state 35


State 22

	InsertStmt -> insert . into IDENTIFIER values '(' ValueList ')'    (rule 38)

	into           shift, and enter state 34


State 23

	UpdateStmt -> update . IDENTIFIER set '(' SetClause ')' where WhereClause    (rule 66)

	IDENTIFIER     shift, and enter state 33


State 24

	UseDatabase -> use . database IDENTIFIER            (rule 33)

	database       shift, and enter state 32


State 25

	ShowDatabases -> show . databases                   (rule 34)
	ShowDatabase -> show . database                     (rule 35)
	ShowTables -> show . tables                         (rule 36)

	database       shift, and enter state 29
	databases      shift, and enter state 30
	tables         shift, and enter state 31


State 26

	DescribeTable -> desc . IDENTIFIER                  (rule 37)

	IDENTIFIER     shift, and enter state 28


State 27

	%start_parseTokens -> SQL .                         (rule 0)

	%eof           accept


State 28

	DescribeTable -> desc IDENTIFIER .                  (rule 37)

	';'            reduce using rule 37


State 29

	ShowDatabase -> show database .                     (rule 35)

	';'            reduce using rule 35


State 30

	ShowDatabases -> show databases .                   (rule 34)

	';'            reduce using rule 34


State 31

	ShowTables -> show tables .                         (rule 36)

	';'            reduce using rule 36


State 32

	UseDatabase -> use database . IDENTIFIER            (rule 33)

	IDENTIFIER     shift, and enter state 58


State 33

	UpdateStmt -> update IDENTIFIER . set '(' SetClause ')' where WhereClause    (rule 66)

	set            shift, and enter state 57


State 34

	InsertStmt -> insert into . IDENTIFIER values '(' ValueList ')'    (rule 38)

	IDENTIFIER     shift, and enter state 56


State 35

	DeleteStmt -> delete from . IDENTIFIER where WhereClause    (rule 67)

	IDENTIFIER     shift, and enter state 55


State 36

	ColumnList -> Column .                              (rule 61)

	from           reduce using rule 61
	','            reduce using rule 61


State 37

	ColumnList -> ColumnList . ',' ColumnList           (rule 62)
	SelectStmt -> select ColumnList . from TableList where WhereClause    (rule 65)

	from           shift, and enter state 53
	','            shift, and enter state 54


State 38

	Column -> IDENTIFIER .                              (rule 51)
	Column -> IDENTIFIER . '.' IDENTIFIER               (rule 52)

	from           reduce using rule 51
	';'            reduce using rule 51
	','            reduce using rule 51
	is             reduce using rule 51
	and            reduce using rule 51
	'='            reduce using rule 51
	'<>'           reduce using rule 51
	'<='           reduce using rule 51
	'>='           reduce using rule 51
	'<'            reduce using rule 51
	'>'            reduce using rule 51
	'.'            shift, and enter state 52


State 39

	DropDatabase -> drop database . IDENTIFIER          (rule 18)

	IDENTIFIER     shift, and enter state 51


State 40

	DropTable -> drop table . IDENTIFIER                (rule 32)

	IDENTIFIER     shift, and enter state 50


State 41

	DropIndex -> drop index . IDENTIFIER IdtList        (rule 72)

	IDENTIFIER     shift, and enter state 49


State 42

	CreateDatabase -> create database . IDENTIFIER      (rule 17)

	IDENTIFIER     shift, and enter state 48


State 43

	CreateTable -> create table . IDENTIFIER '(' DomainList ')'    (rule 19)

	IDENTIFIER     shift, and enter state 47


State 44

	CreateIndex -> create index . IDENTIFIER IdtList    (rule 71)

	IDENTIFIER     shift, and enter state 46


State 45

	SQL -> SQLStatement ';' .                           (rule 1)

	%eof           reduce using rule 1


State 46

	CreateIndex -> create index IDENTIFIER . IdtList    (rule 71)

	IDENTIFIER     shift, and enter state 67

	IdtList        goto state 69

State 47

	CreateTable -> create table IDENTIFIER . '(' DomainList ')'    (rule 19)

	'('            shift, and enter state 68


State 48

	CreateDatabase -> create database IDENTIFIER .      (rule 17)

	';'            reduce using rule 17


State 49

	DropIndex -> drop index IDENTIFIER . IdtList        (rule 72)

	IDENTIFIER     shift, and enter state 67

	IdtList        goto state 66

State 50

	DropTable -> drop table IDENTIFIER .                (rule 32)

	';'            reduce using rule 32


State 51

	DropDatabase -> drop database IDENTIFIER .          (rule 18)

	';'            reduce using rule 18


State 52

	Column -> IDENTIFIER '.' . IDENTIFIER               (rule 52)

	IDENTIFIER     shift, and enter state 65


State 53

	SelectStmt -> select ColumnList from . TableList where WhereClause    (rule 65)

	IDENTIFIER     shift, and enter state 64

	TableList      goto state 63

State 54

	ColumnList -> ColumnList ',' . ColumnList           (rule 62)

	IDENTIFIER     shift, and enter state 38

	Column         goto state 36
	ColumnList     goto state 62

State 55

	DeleteStmt -> delete from IDENTIFIER . where WhereClause    (rule 67)

	where          shift, and enter state 61


State 56

	InsertStmt -> insert into IDENTIFIER . values '(' ValueList ')'    (rule 38)

	values         shift, and enter state 60


State 57

	UpdateStmt -> update IDENTIFIER set . '(' SetClause ')' where WhereClause    (rule 66)

	'('            shift, and enter state 59


State 58

	UseDatabase -> use database IDENTIFIER .            (rule 33)

	';'            reduce using rule 33


State 59

	UpdateStmt -> update IDENTIFIER set '(' . SetClause ')' where WhereClause    (rule 66)

	IDENTIFIER     shift, and enter state 83

	SetClause      goto state 81
	Assignment     goto state 82

State 60

	InsertStmt -> insert into IDENTIFIER values . '(' ValueList ')'    (rule 38)

	'('            shift, and enter state 80


State 61

	DeleteStmt -> delete from IDENTIFIER where . WhereClause    (rule 67)

	IDENTIFIER     shift, and enter state 38

	WhereClause    goto state 78
	Column         goto state 79

State 62

	ColumnList -> ColumnList . ',' ColumnList           (rule 62)
	ColumnList -> ColumnList ',' ColumnList .           (rule 62)

	from           reduce using rule 62
	','            shift, and enter state 54
			(reduce using rule 62)



State 63

	SelectStmt -> select ColumnList from TableList . where WhereClause    (rule 65)

	where          shift, and enter state 77


State 64

	TableList -> IDENTIFIER .                           (rule 44)
	TableList -> IDENTIFIER . ',' TableList             (rule 45)

	where          reduce using rule 44
	','            shift, and enter state 76


State 65

	Column -> IDENTIFIER '.' IDENTIFIER .               (rule 52)

	from           reduce using rule 52
	';'            reduce using rule 52
	','            reduce using rule 52
	is             reduce using rule 52
	and            reduce using rule 52
	'='            reduce using rule 52
	'<>'           reduce using rule 52
	'<='           reduce using rule 52
	'>='           reduce using rule 52
	'<'            reduce using rule 52
	'>'            reduce using rule 52


State 66

	DropIndex -> drop index IDENTIFIER IdtList .        (rule 72)

	';'            reduce using rule 72


State 67

	IdtList -> IDENTIFIER .                             (rule 63)
	IdtList -> IDENTIFIER . ',' IdtList                 (rule 64)

	';'            reduce using rule 63
	','            shift, and enter state 75


State 68

	CreateTable -> create table IDENTIFIER '(' . DomainList ')'    (rule 19)

	IDENTIFIER     shift, and enter state 72
	primary        shift, and enter state 73
	foreign        shift, and enter state 74

	DomainList     goto state 70
	DomainDesc     goto state 71

State 69

	CreateIndex -> create index IDENTIFIER IdtList .    (rule 71)

	';'            reduce using rule 71


State 70

	CreateTable -> create table IDENTIFIER '(' DomainList . ')'    (rule 19)

	')'            shift, and enter state 111


State 71

	DomainList -> DomainDesc .                          (rule 20)
	DomainList -> DomainDesc . ',' DomainList           (rule 21)

	','            shift, and enter state 110
	')'            reduce using rule 20


State 72

	DomainDesc -> IDENTIFIER . char MaxLength Nullable    (rule 22)
	DomainDesc -> IDENTIFIER . int MaxLength Nullable    (rule 23)
	DomainDesc -> IDENTIFIER . float Nullable           (rule 24)
	DomainDesc -> IDENTIFIER . date Nullable            (rule 25)

	int            shift, and enter state 106
	char           shift, and enter state 107
	float          shift, and enter state 108
	date           shift, and enter state 109


State 73

	DomainDesc -> primary . key IDENTIFIER              (rule 26)

	key            shift, and enter state 105


State 74

	DomainDesc -> foreign . key '(' IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	key            shift, and enter state 104


State 75

	IdtList -> IDENTIFIER ',' . IdtList                 (rule 64)

	IDENTIFIER     shift, and enter state 67

	IdtList        goto state 103

State 76

	TableList -> IDENTIFIER ',' . TableList             (rule 45)

	IDENTIFIER     shift, and enter state 64

	TableList      goto state 102

State 77

	SelectStmt -> select ColumnList from TableList where . WhereClause    (rule 65)

	IDENTIFIER     shift, and enter state 38

	WhereClause    goto state 101
	Column         goto state 79

State 78

	WhereClause -> WhereClause . and WhereClause        (rule 50)
	DeleteStmt -> delete from IDENTIFIER where WhereClause .    (rule 67)

	';'            reduce using rule 67
	and            shift, and enter state 100


State 79

	WhereClause -> Column . Op Expr                     (rule 48)
	WhereClause -> Column . is IsNull                   (rule 49)

	is             shift, and enter state 93
	'='            shift, and enter state 94
	'<>'           shift, and enter state 95
	'<='           shift, and enter state 96
	'>='           shift, and enter state 97
	'<'            shift, and enter state 98
	'>'            shift, and enter state 99

	Op             goto state 92

State 80

	InsertStmt -> insert into IDENTIFIER values '(' . ValueList ')'    (rule 38)

	STRING         shift, and enter state 89
	INT            shift, and enter state 90
	null           shift, and enter state 91

	ValueList      goto state 87
	Value          goto state 88

State 81

	UpdateStmt -> update IDENTIFIER set '(' SetClause . ')' where WhereClause    (rule 66)

	')'            shift, and enter state 86


State 82

	SetClause -> Assignment .                           (rule 68)
	SetClause -> Assignment . ',' SetClause             (rule 69)

	','            shift, and enter state 85
	')'            reduce using rule 68


State 83

	Assignment -> IDENTIFIER . '=' Value                (rule 70)

	'='            shift, and enter state 84


State 84

	Assignment -> IDENTIFIER '=' . Value                (rule 70)

	STRING         shift, and enter state 89
	INT            shift, and enter state 90
	null           shift, and enter state 91

	Value          goto state 132

State 85

	SetClause -> Assignment ',' . SetClause             (rule 69)

	IDENTIFIER     shift, and enter state 83

	SetClause      goto state 131
	Assignment     goto state 82

State 86

	UpdateStmt -> update IDENTIFIER set '(' SetClause ')' . where WhereClause    (rule 66)

	where          shift, and enter state 130


State 87

	InsertStmt -> insert into IDENTIFIER values '(' ValueList . ')'    (rule 38)

	')'            shift, and enter state 129


State 88

	ValueList -> Value .                                (rule 39)
	ValueList -> Value . ',' ValueList                  (rule 40)

	','            shift, and enter state 128
	')'            reduce using rule 39


State 89

	Value -> STRING .                                   (rule 41)

	';'            reduce using rule 41
	','            reduce using rule 41
	')'            reduce using rule 41
	and            reduce using rule 41


State 90

	Value -> INT .                                      (rule 42)

	';'            reduce using rule 42
	','            reduce using rule 42
	')'            reduce using rule 42
	and            reduce using rule 42


State 91

	Value -> null .                                     (rule 43)

	';'            reduce using rule 43
	','            reduce using rule 43
	')'            reduce using rule 43
	and            reduce using rule 43


State 92

	WhereClause -> Column Op . Expr                     (rule 48)

	IDENTIFIER     shift, and enter state 38
	STRING         shift, and enter state 89
	INT            shift, and enter state 90
	null           shift, and enter state 91

	Value          goto state 125
	Column         goto state 126
	Expr           goto state 127

State 93

	WhereClause -> Column is . IsNull                   (rule 49)

	not            shift, and enter state 123
	null           shift, and enter state 124

	IsNull         goto state 122

State 94

	Op -> '=' .                                         (rule 55)

	IDENTIFIER     reduce using rule 55
	STRING         reduce using rule 55
	INT            reduce using rule 55
	null           reduce using rule 55


State 95

	Op -> '<>' .                                        (rule 56)

	IDENTIFIER     reduce using rule 56
	STRING         reduce using rule 56
	INT            reduce using rule 56
	null           reduce using rule 56


State 96

	Op -> '<=' .                                        (rule 57)

	IDENTIFIER     reduce using rule 57
	STRING         reduce using rule 57
	INT            reduce using rule 57
	null           reduce using rule 57


State 97

	Op -> '>=' .                                        (rule 58)

	IDENTIFIER     reduce using rule 58
	STRING         reduce using rule 58
	INT            reduce using rule 58
	null           reduce using rule 58


State 98

	Op -> '<' .                                         (rule 59)

	IDENTIFIER     reduce using rule 59
	STRING         reduce using rule 59
	INT            reduce using rule 59
	null           reduce using rule 59


State 99

	Op -> '>' .                                         (rule 60)

	IDENTIFIER     reduce using rule 60
	STRING         reduce using rule 60
	INT            reduce using rule 60
	null           reduce using rule 60


State 100

	WhereClause -> WhereClause and . WhereClause        (rule 50)

	IDENTIFIER     shift, and enter state 38

	WhereClause    goto state 121
	Column         goto state 79

State 101

	WhereClause -> WhereClause . and WhereClause        (rule 50)
	SelectStmt -> select ColumnList from TableList where WhereClause .    (rule 65)

	';'            reduce using rule 65
	and            shift, and enter state 100


State 102

	TableList -> IDENTIFIER ',' TableList .             (rule 45)

	where          reduce using rule 45


State 103

	IdtList -> IDENTIFIER ',' IdtList .                 (rule 64)

	';'            reduce using rule 64


State 104

	DomainDesc -> foreign key . '(' IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	'('            shift, and enter state 120


State 105

	DomainDesc -> primary key . IDENTIFIER              (rule 26)

	IDENTIFIER     shift, and enter state 119


State 106

	DomainDesc -> IDENTIFIER int . MaxLength Nullable    (rule 23)

	','            reduce using rule 28
	'('            shift, and enter state 117
	')'            reduce using rule 28
	not            reduce using rule 28

	MaxLength      goto state 118

State 107

	DomainDesc -> IDENTIFIER char . MaxLength Nullable    (rule 22)

	','            reduce using rule 28
	'('            shift, and enter state 117
	')'            reduce using rule 28
	not            reduce using rule 28

	MaxLength      goto state 116

State 108

	DomainDesc -> IDENTIFIER float . Nullable           (rule 24)

	','            reduce using rule 30
	')'            reduce using rule 30
	not            shift, and enter state 114

	Nullable       goto state 115

State 109

	DomainDesc -> IDENTIFIER date . Nullable            (rule 25)

	','            reduce using rule 30
	')'            reduce using rule 30
	not            shift, and enter state 114

	Nullable       goto state 113

State 110

	DomainList -> DomainDesc ',' . DomainList           (rule 21)

	IDENTIFIER     shift, and enter state 72
	primary        shift, and enter state 73
	foreign        shift, and enter state 74

	DomainList     goto state 112
	DomainDesc     goto state 71

State 111

	CreateTable -> create table IDENTIFIER '(' DomainList ')' .    (rule 19)

	';'            reduce using rule 19


State 112

	DomainList -> DomainDesc ',' DomainList .           (rule 21)

	')'            reduce using rule 21


State 113

	DomainDesc -> IDENTIFIER date Nullable .            (rule 25)

	','            reduce using rule 25
	')'            reduce using rule 25


State 114

	Nullable -> not . null                              (rule 31)

	null           shift, and enter state 140


State 115

	DomainDesc -> IDENTIFIER float Nullable .           (rule 24)

	','            reduce using rule 24
	')'            reduce using rule 24


State 116

	DomainDesc -> IDENTIFIER char MaxLength . Nullable    (rule 22)

	','            reduce using rule 30
	')'            reduce using rule 30
	not            shift, and enter state 114

	Nullable       goto state 139

State 117

	MaxLength -> '(' . INT ')'                          (rule 29)

	INT            shift, and enter state 138


State 118

	DomainDesc -> IDENTIFIER int MaxLength . Nullable    (rule 23)

	','            reduce using rule 30
	')'            reduce using rule 30
	not            shift, and enter state 114

	Nullable       goto state 137

State 119

	DomainDesc -> primary key IDENTIFIER .              (rule 26)

	','            reduce using rule 26
	')'            reduce using rule 26


State 120

	DomainDesc -> foreign key '(' . IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	IDENTIFIER     shift, and enter state 136


State 121

	WhereClause -> WhereClause . and WhereClause        (rule 50)
	WhereClause -> WhereClause and WhereClause .        (rule 50)

	';'            reduce using rule 50
	and            shift, and enter state 100
			(reduce using rule 50)



State 122

	WhereClause -> Column is IsNull .                   (rule 49)

	';'            reduce using rule 49
	and            reduce using rule 49


State 123

	IsNull -> not . null                                (rule 47)

	null           shift, and enter state 135


State 124

	IsNull -> null .                                    (rule 46)

	';'            reduce using rule 46
	and            reduce using rule 46


State 125

	Expr -> Value .                                     (rule 54)

	';'            reduce using rule 54
	and            reduce using rule 54


State 126

	Expr -> Column .                                    (rule 53)

	';'            reduce using rule 53
	and            reduce using rule 53


State 127

	WhereClause -> Column Op Expr .                     (rule 48)

	';'            reduce using rule 48
	and            reduce using rule 48


State 128

	ValueList -> Value ',' . ValueList                  (rule 40)

	STRING         shift, and enter state 89
	INT            shift, and enter state 90
	null           shift, and enter state 91

	ValueList      goto state 134
	Value          goto state 88

State 129

	InsertStmt -> insert into IDENTIFIER values '(' ValueList ')' .    (rule 38)

	';'            reduce using rule 38


State 130

	UpdateStmt -> update IDENTIFIER set '(' SetClause ')' where . WhereClause    (rule 66)

	IDENTIFIER     shift, and enter state 38

	WhereClause    goto state 133
	Column         goto state 79

State 131

	SetClause -> Assignment ',' SetClause .             (rule 69)

	')'            reduce using rule 69


State 132

	Assignment -> IDENTIFIER '=' Value .                (rule 70)

	','            reduce using rule 70
	')'            reduce using rule 70


State 133

	WhereClause -> WhereClause . and WhereClause        (rule 50)
	UpdateStmt -> update IDENTIFIER set '(' SetClause ')' where WhereClause .    (rule 66)

	';'            reduce using rule 66
	and            shift, and enter state 100


State 134

	ValueList -> Value ',' ValueList .                  (rule 40)

	')'            reduce using rule 40


State 135

	IsNull -> not null .                                (rule 47)

	';'            reduce using rule 47
	and            reduce using rule 47


State 136

	DomainDesc -> foreign key '(' IDENTIFIER . ')' references IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	')'            shift, and enter state 142


State 137

	DomainDesc -> IDENTIFIER int MaxLength Nullable .    (rule 23)

	','            reduce using rule 23
	')'            reduce using rule 23


State 138

	MaxLength -> '(' INT . ')'                          (rule 29)

	')'            shift, and enter state 141


State 139

	DomainDesc -> IDENTIFIER char MaxLength Nullable .    (rule 22)

	','            reduce using rule 22
	')'            reduce using rule 22


State 140

	Nullable -> not null .                              (rule 31)

	','            reduce using rule 31
	')'            reduce using rule 31


State 141

	MaxLength -> '(' INT ')' .                          (rule 29)

	','            reduce using rule 29
	')'            reduce using rule 29
	not            reduce using rule 29


State 142

	DomainDesc -> foreign key '(' IDENTIFIER ')' . references IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	references     shift, and enter state 143


State 143

	DomainDesc -> foreign key '(' IDENTIFIER ')' references . IDENTIFIER '(' IDENTIFIER ')'    (rule 27)

	IDENTIFIER     shift, and enter state 144


State 144

	DomainDesc -> foreign key '(' IDENTIFIER ')' references IDENTIFIER . '(' IDENTIFIER ')'    (rule 27)

	'('            shift, and enter state 145


State 145

	DomainDesc -> foreign key '(' IDENTIFIER ')' references IDENTIFIER '(' . IDENTIFIER ')'    (rule 27)

	IDENTIFIER     shift, and enter state 146


State 146

	DomainDesc -> foreign key '(' IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER . ')'    (rule 27)

	')'            shift, and enter state 147


State 147

	DomainDesc -> foreign key '(' IDENTIFIER ')' references IDENTIFIER '(' IDENTIFIER ')' .    (rule 27)

	','            reduce using rule 27
	')'            reduce using rule 27


-----------------------------------------------------------------------------
Grammar Totals
-----------------------------------------------------------------------------
Number of rules: 73
Number of terminals: 46
Number of non-terminals: 34
Number of states: 148