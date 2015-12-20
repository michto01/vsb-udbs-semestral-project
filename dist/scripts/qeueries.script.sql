/*1;1;%%%
 *
 * @name 	Players list
 * @brief	Get list of all players ordered by email address in aplhebetical order.
 *
 * @group	1.1
 * @expected  	%%
 */
SELECT 	*
FROM	[MIC0220].[User]
WHERE	UPPER(u_role_str) = 'PLAYER'
ORDER	BY u_email ASC;

/*1;2;%%
 *
 * @name	List of all journeys
 * @brief	Get all journeys together with % aquired from journey ordered descending
 *		by score.
 *
 * @group	1.2
 * @excepted	%%
 */
SELECT 	[j_id]
     ,	[j_points]/[j_points_max] '%'
FROM	[MIC0220].[Journey]
ORDER	BY [j_points]/[j_points_max] DESC;

/*1;3;1
 *
 * @name	Number of worlds in the database
 * 
 * @group	1.3
 * @expected	1
 */
SELECT	COUNT( * )
FROM	[MIC0220].[World];

/*1;4;1;
 *
 * @name	Average score from all journeys
 *
 * @group	1.4
 * @expected	1
 */
SELECT	AVG( [j_points] )
FROM	[MIC0220].[Journey];


--
---
----- GROUP II
---
--


/*2;1;%%
 *
 * @name	Get players with specific letters in password
 * @brief	Gather all players whom's password contains 'l' or 'p'
 *
 * @group	2.1
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	( [u_password] LIKE '%l%' )
   OR	( [u_password] LIKE '%p%' )
  AND   UPPER([u_role_str]) = 'PLAYER';

/*2;2;%%
 *
 * @name	Get users with password longer then minimal recommended lenght
 * @brief	Get all player with the password containg at least 7 characters.
 *
 * @group	2.2
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	LEN( [u_password] ) > 7;


/*2;3;%%
 *
 * @name	Get all profitable the qest task items
 * @brief	Get all QuestTaskItems which have higher evaluation then 10 
 *
 * @group	2.3
 * @expected	%%
 */
SELECT 	*
FROM	[MIC0220].[QuestTaskItem]
WHERE	NOT ( qi_evaluation < 10 );

/*2;4;1
 *
 * @name	Get the number of the quest tasks with type 'explore'
 * @brief	Get count of the QuestTasks with type 1
 *
 * @group	2.4
 * @expected	1
 */
SELECT	COUNT( * )
FROM	[MIC0220].[QuestTask];
WHERE	[qt_type] = 1;


--
---
----- GROUP III
---
--


/*3;1;%%
 *
 * @name	Get all players using journey master internal mail.
 * @brief	Get all players using jm.com domain mail.
 *
 * @group	3.1
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	( [u_email] LIKE '%jm.com' )
   OR	( [u_email] LIKE '%journeymaster.com')
  AND	UPPER( [u_role_str] ) = 'PLAYER';

/*3;2;%%
 *
 * @name	Get all players using journey master internal mail.
 * @brief	Get all players using jm.com or journeymaster.com mails using UNION
 *
 * @group	3.2
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	( [u_email] LIKE '%jm.com' )
  AND   UPPER( [u_role_str] ) = 'PLAYER'

UNION

FROM	[MIC0220].[User]
WHERE	( [u_email] LIKE '%journeymaster.com' )
  AND   UPPER( [u_role_str] ) = 'PLAYER';

/*3;3;%%
 *
 * @name	Get all the players using journey master internal mail	
 * @brief	Get all the players using jm.com or journeymaster with compound WHERE clouse
 *
 * @group	3.3
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	(
	  [u_email] IN (
		SELECT	[u_email]
		FROM	[MIC0220].[User]
		WHERE	[u_email] LIKE '%jm.com'
		   OR	[u_email] LIKE '%journeymaster.com'
	  )
	)
  AND	UPPER( [u_role_str] ) = 'PLAYER';

/*3;4;%%
 *
 * @name	Get all the players using journey master internal mail.
 * @brief	Get all the players using jm.com or j..m...com using EXCEPT closure.
 *
 * @group 	3.4
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
WHERE	UPPER( [u_role_str] ) = 'PLAYER'

EXCEPT

SELECT	*
FROM	[MIC0220].[User]
WHERE	( [u_email] NOT LIKE '%jm.com' )
  AND	( [u_email] NOT LIKE '%journeymaster.com' );


--
---
----- GROUP IV
---
--

/*4;1;%%
 *
 * @name	List of types of quest tasks with number of items for each type.	
 *
 * @group	4.1
 * @expected	%%
 */
SELECT	[qt_type]
     ,	COUNT( * )
FROM	[MIC0220].[QuestTask]
GROUP	BY [qt_type];

/*4;2;%%
 *
 * @name	List number of task items for each quest task.
 *
 * @group	4.2
 * @expected	%%
 */
SELECT	[qt_id]
     ,  COUNT( * )
FROM	[MIC0220].[QuestTaskItem]
GROUP	BY [qt_id];

/*4;3;%%
 *
 * @name	List of specific quests and numbers of tasks
 * @brief	List number of tasks of each quest if there are more then 3 in it.
 *
 * @group	4.3
 * @expected	%%
 */
SELECT	[q_id]
     ,  COUNT( * )
FROM	[MIC0220].[QuestTask]
GROUP	BY [q_id]
HAVING	COUNT( * ) >= 3;

/*4;4;%%
 *
 * @name	Average of the points in consequent journeys
 *
 * @group	4.4
 * @expected	%%	
 */
SELECT	[j_id]
     ,	AVG( [j_points] )
FROM	[MIC0220].[Journey]
GROUP	BY [j_id];

--
---
----- GROUP V
---
--

/*5;1;%%
 *
 * @name	Get all users with details (V1)
 * @brief	Get all users with details using JOIN statement
 *
 * @group	5.1
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User]
  JOIN  [MIC0220].[UserDetails]
    ON	[User].[u_id] = [UserDetails].[u_id];

/*5;2;%%
 *
 * @name 	Get all users with details (V2)
 * @brief 	Get all users with details using COMPOUND WHERE clousure.
 *
 * @group	5.2
 * @expected	%%
 */
SELECT	*
FROM	[MIC0220].[User] u
   , 	[MIC0220].[UserDetails] ud
WHERE	u.[u_id]  IN (
		SELECT	u.[u_id]
		FROM	[MIC0220].[User] u2
		   ,	[MIC0220].[UserDetails] ud2
		WHERE	u.[u_id] = u2.[u_id]
	)
  AND	ud.[u_id] IN (
		SELECT 	u2.[u_id]
		FROM	[MIC0220].[User] u2
		   ,	[MIC0220].[UserDetails] ud2
		WHERE	u.[u_id] = u2.[u_id]
	);

/*5;3;%%
 *
 * @name	Show exam(s) containg most amount of quest task with type 1 (explore)
 *
 * @group	5.3
 * @expected	%%
 */
SELECT	q.[q_id]
FROM	[MIC0220].[Quest] q
  JOIN	[MIC0220].[QuestTask] t
    ON	q.[q_id] = t.[q_id]
WHERE	t.[q_type] = 1
GROUP	BY q.[q_id]
HAVING	COUNT( * ) >= ALL(
		SELECT	COUNT( * )
		FROM	[MIC0220].[Quest] q2
		  JOIN	[MIC0220].[QuestTask] t2
		    ON	q2.[q_id] = t2.[q_id]
		GROUP	BY q2.[q_id]
	);

/*
 *5;4;%%
 *
 * @name	Get average of the 'best' average of all players.
 * @note	Player(s) with the best score is(are) identified by name, surname, email
 *
 * @group	5.4
 * @excepted	%%
 */
SELECT	 u.[u_email]
     , 	ud.[ue_surname]
     ,	ud.[ue_name] 
     ,  AVG( [j_status] )

FROM	[MIC0220].[User] u
  JOIN  [MIC0220].[UserDetails] ud 
    ON   u.[u_id] = ud.[u_id]
  JOIN  [MIC0220].[Journey] j
    ON   u.[u_id] = j.[u_id]

WHERE	 UPPER( u.[u_role_str] ) = 'PLAYER' 
  AND 	 t.[j_status] >= ALL(
		SELECT 	AVG( [j_status] ) 
		FROM 	[MIC0220].[Journey]
	 )

GROUP	 BY u.[u_email], ud.[ue_surname], ud.[ue_name];


--
---
----- GROUP VI
---
--

/*6;1;1;
 *
 * @name	Get list of players best in some journey and the status from the journey 
 *
 * @group	6.1
 * @expected	1
 */
SELECT	[u_email]
     , 	[j_status]
FROM	(
		SELECT 	u.[u_email], 
		     ,	j.[j_status] 
		FROM	[MIC0220].[User] u
		  JOIN  [MIC0220].[Journey] j 
		    ON	 u.[u_id] = j.[u_id]
		WHERE j.[j_status] >= ALL(
			SELECT 	[j_status] 
			FROM 	[MIC0220].[Journey] 
			WHERE	 j.[j_id] = [j_id]
		)
	) a;

/*6;2;1;													*
 * @name	Select how many players did a quest for those quests who were made 
 *		by at least one player 
 *
 * @group	6.2
 * @expected 	1
 */
SELECT	[j_id]
     ,  COUNT( * ) 
FROM    (
		SELECT 	j.[j_id]
		     , 	[q_start] 
		     ,	[q_end] 
		FROM	[MIC0220].[User] u 
	          JOIN	[MIC0220].[Journey] j 
		    ON	j.[u_id] = u.[u_id]
		  JOIN 	[MIC0220].[JourneyTask] jt 
		    ON  jt.[j_id] = j.[j_id]
		  JOIN  [MIC0220].[QuestTask] qt  
		    ON  jt.[qt_id] = qt.[qt_id]
		  JOIN  [MIC0220].[Quest] q 
	            ON  q.[q_id] = qt.[q_id]
	 ) _table
GROUP	BY [j_id];
