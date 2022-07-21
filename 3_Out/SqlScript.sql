-- Database-SahuGroup_100000001
-- Operation
use SahuGroup_100000001
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List-Start
-- Operation-Query-CURD
-- Create
Create Table C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List
(
	PurposeCategory_Name varchar(120)  Not Null Unique ,
	PurposeCategory_ID tinyint Primary Key Not Null Identity(100,1) ,
	Record_DateTime datetime Default Current_Timestamp ,
	Upgrade_DateTime datetime 
)
GO
-- Update-All
Insert Into C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List
(PurposeCategory_Name,Upgrade_DateTime)
values
(
'Change-Habit','2019-02-23 20:02:21.550'
)
GO
-- Read-All
Select * From C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List-End

-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List-Start
-- Operation-Query-CURD
-- Create
Create Table C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List
(
	DocumentCategory_Name varchar(40)  Not Null Unique ,
	DocumentCategory_ID tinyint Primary Key Not Null Identity(100,1) ,
	Record_DateTime datetime Default Current_Timestamp ,
	Upgrade_DateTime datetime 
)
GO
-- Update-All
Insert Into C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List
(DocumentCategory_Name,Upgrade_DateTime)
values
(
'Note','2019-02-23 20:02:21.550'
),
(
'Video','2019-02-23 20:02:21.551'
),
(
'Link-Youtube','2019-02-23 20:02:21.551'
),
(
'Song','2019-02-23 20:02:21.551'
),
(
'Report-Analysis','2019-02-23 20:02:21.551'
)
GO
-- Read-All
Select * From C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List-End

-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_List-Start
-- Operation-Query-CURD
-- Create
Create Table C1_Fuschia_MySCM_MyChallenge_General_Line_List
(
	User_ID int  Not Null ,
	Line_Name varchar(40) Not Null ,
	PurposeCategory_ID tinyint  Not Null ,
	Line_Desc varchar(40) ,
	Start_DateTime datetime Default Current_Timestamp ,
	End_DateTime datetime ,
	Line_ID int Primary Key Not Null Identity(100000000,1) ,
	Record_DateTime datetime Default Current_Timestamp ,
	Upgrade_DateTime datetime ,
	Constraint FP_User_ID_C1_Fuschia_MySCM_MyChallenge_General_Line_List Foreign Key(User_ID) References D1_Identity_MyUser_MyProfile_Registeral_UserRegisterInfoTillFactorSingle_List(User_ID)
	,Constraint FP_PurposeCategory_ID_C1_Fuschia_MySCM_MyChallenge_General_Line_List Foreign Key(PurposeCategory_ID) References C1_Fuschia_MySCM_MyChallenge_General_Line_Purpose_Category_List(PurposeCategory_ID)
)
GO
-- Update-All
Insert Into C1_Fuschia_MySCM_MyChallenge_General_Line_List
(User_ID,Line_Name,PurposeCategory_ID,Line_Desc,End_DateTime,Upgrade_DateTime)
values
(
'100000000','Improvement-Thought','100','sdafdasf','2019-02-23 20:02:21.560','2019-02-23 20:02:21.560'
)
GO
-- Read-All
Select * From C1_Fuschia_MySCM_MyChallenge_General_Line_List
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_List-End

-- Table-C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List-Start
-- Operation-Query-CURD
-- Create
Create Table C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List
(
	User_ID int  Not Null ,
	Line_ID int  Not Null ,
	DocumentCategory_ID tinyint  Not Null ,
	DocumentNo_FileName varchar(40) Not Null ,
	Document_FilePath varchar(120) Not Null ,
	Document_ID int Primary Key Not Null Identity(100000000,1) ,
	Record_DateTime datetime Default Current_Timestamp ,
	Upgrade_DateTime datetime ,
	Constraint FP_User_ID_C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List Foreign Key(User_ID) References D1_Identity_MyUser_MyProfile_Registeral_UserRegisterInfoTillFactorSingle_List(User_ID)
	,Constraint FP_Line_ID_C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List Foreign Key(Line_ID) References C1_Fuschia_MySCM_MyChallenge_General_Line_List(Line_ID)
	,Constraint FP_DocumentCategory_ID_C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List Foreign Key(DocumentCategory_ID) References C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List(DocumentCategory_ID)
)
GO
-- Update-All
Insert Into C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List
(User_ID,Line_ID,DocumentCategory_ID,DocumentNo_FileName,Document_FilePath,Upgrade_DateTime)
values
(
'100000000','100000000','100','xxx','xxx','2019-02-23 20:02:21.560'
)
GO
-- Read-All
Select * From C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_Personal_Line_Document_List-End

-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List-Start
-- Operation-Query-CURD
-- Create
Create Table C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List
(
	User_ID int  Not Null ,
	Line_ID int  Not Null ,
	DocumentCategory_ID tinyint  Not Null Default 104 ,
	DocumentNo_FileName varchar(40) Not Null ,
	Document_FilePath varchar(120) Not Null ,
	Document_ID int Primary Key Not Null Identity(100000000,1) ,
	Record_DateTime datetime Default Current_Timestamp ,
	Upgrade_DateTime datetime ,
	Constraint FP_User_ID_C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List Foreign Key(User_ID) References D1_Identity_MyUser_MyProfile_Registeral_UserRegisterInfoTillFactorSingle_List(User_ID)
	,Constraint FP_Line_ID_C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List Foreign Key(Line_ID) References C1_Fuschia_MySCM_MyChallenge_General_Line_List(Line_ID)
	,Constraint FP_DocumentCategory_ID_C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List Foreign Key(DocumentCategory_ID) References C1_Fuschia_MySCM_MyChallenge_General_Line_Document_Category_List(DocumentCategory_ID)
)
GO
-- Update-All
Insert Into C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List
(User_ID,Line_ID,DocumentNo_FileName,Document_FilePath,Upgrade_DateTime)
values
(
'100000000','100000000','xxx','xxx','2019-02-23 20:02:21.560'
)
GO
-- Read-All
Select * From C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List
GO
-- Table-C1_Fuschia_MySCM_MyChallenge_General_Line_Update_List-End

