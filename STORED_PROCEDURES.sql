--STORED PROCEDURES--

SELECT * FROM MST_City
SELECT * FROM MST_State


1. --PR_MST_CITY_SELECTALL

CREATE PROCEDURE PR_MST_CITY_SELECTALL

AS
BEGIN

SELECT C.CITYID,C.CITYNAME,C.PINCODE,C.CITYREMARKS,C.STATEID,
	   S.STATENAME
	   
	   FROM MST_CITY C
	   
	   INNER JOIN MST_STATE S
	   
	   ON C.STATEID=S.STATEID
	  
END

EXEC PR_MST_CITY_SELECTALL



2.--PR_MST_CITY_INSERT

CREATE PROCEDURE PR_MST_CITY_INSERT

  @CITYID         INT,
  @CITYNAME       VARCHAR(250),
  @PINCODE        VARCHAR(6),
  @STATEID        INT,
  @CITYREMARKS    VARCHAR(250)

AS
BEGIN

 INSERT INTO MST_City VALUES
 
 (@CITYID,@CITYNAME,@PINCODE,@STATEID,@CITYREMARKS);
 
END 

EXEC PR_MST_CITY_INSERT 5,GANDHINAGAR,350001,1,GOOD



3.--PR_MST_CITY_UPDATE

CREATE PROCEDURE PR_MST_CITY_UPDATE

  @CITYID         INT,
  @CITYNAME       VARCHAR(250),
  @PINCODE        VARCHAR(6),
  @STATEID        INT,
  @CITYREMARKS    VARCHAR(250)

AS
BEGIN

 UPDATE MST_CITY

 SET CITYNAME = @CITYNAME,
	 PINCODE  = @PINCODE,
	 STATEID  = @STATEID,
	 CITYREMARKS = @CITYREMARKS

 WHERE CITYID = @CITYID
 
END  

EXEC PR_MST_CITY_UPDATE 1,JAMNAGAR,340002,3,GOOD



4.--PR_MST_CITY_DELETE

CREATE PROCEDURE PR_MST_CITY_DELETE

 @CITYID INT

AS
BEGIN

 DELETE FROM MST_CITY
 
 WHERE CITYID = @CITYID

END

EXEC PR_MST_CITY_DELETE 4



5.--PR_MST_CITY_SELECTBYPK

CREATE PROCEDURE PR_MST_CITY_SELECTBYPK

 @CITYID  INT

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE CITYID = @CITYID

END

EXEC PR_MST_CITY_SELECTBYPK 5



6.--PR_MST_CITY_SELECTBYPINCODESTARTSWITH360

CREATE PROCEDURE PR_MST_CITY_SELECTBYPINCODESTARTSWITH360

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE PINCODE LIKE '360%'

END

EXEC PR_MST_CITY_SELECTBYPINCODESTARTSWITH360



7.--PR_MST_CITY_SELECTBYCITYNAMEPINCODE

CREATE PROCEDURE PR_MST_CITY_SELECTBYCITYNAMEPINCODE

 @CITYNAME   VARCHAR(250),
 @PINCODE    VARCHAR(6)

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE CITYNAME = @CITYNAME AND

	   PINCODE  = @PINCODE
	   
END

EXEC PR_MST_CITY_SELECTBYCITYNAMEPINCODE SURAT,360005




8.--PR_MST_CITY_SELECTBYCITYREMARKS

CREATE PROCEDURE PR_MST_CITY_SELECTBYCITYREMARKS

 @CITYREMARKS  VARCHAR(500)

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE CITYREMARKS = @CITYREMARKS
 
END 

EXEC PR_MST_CITY_SELECTBYCITYREMARKS GOOD




9.--PR_MST_CITY_SELECTBYSTATEID

CREATE PROCEDURE PR_MST_CITY_SELCTBYSTATEID

 @STATEID  INT

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE STATEID = @STATEID

END

EXEC PR_MST_CITY_SELCTBYSTATEID 3




10.--PR_MST_CITY_SELECTBYSTATEIDCITYID

CREATE PROCEDURE PR_MST_CITY_SELECTBYSTATEIDCITYID

 @STATEID  INT,
 @CITYID   INT

AS
BEGIN

 SELECT * FROM MST_CITY

 WHERE STATEID = @STATEID AND
  
       CITYID  = @CITYID

END

EXEC PR_MST_CITY_SELECTBYSTATEIDCITYID 3,3

 
