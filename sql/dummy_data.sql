INSERT INTO `users` (`UserID`, `sUserName`, `sEmail`, `sPassword`, `dCreated`, `dUpdated`, `dDeleted`) VALUES ('1', 'paul45', 'paul45@aol.com', 'password1', CURRENT_DATE(), CURRENT_DATE(), NULL), ('2', 'dave32', 'dave32@aol.com', 'password2', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('3', 'sara23', 'sara23@aol.com', 'password3', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('4', 'sam21', 'sam21@aol.com', 'password4', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL);

INSERT INTO `lists` (`ListID`, `UserID`, `sListName`, `dCreated`, `dUpdated`, `dDeleted`) VALUES ('1', '1', 'school class list', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('2', '2', 'grocery list', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('3', '3', 'homework list', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('4', '4', 'household chores list', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL);

INSERT INTO `tasks` (`TaskID`, `ListID`, `sTaskName`, `bComplete`, `dDue`, `dCreated`, `dUpdated`, `dDeleted`) VALUES ('1', '1', 'csc154', '1', '2017-11-16 00:00:00', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('2', '2', 'meats', '1', '2017-11-16 00:00:00', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('3', '3', 'web115', '1', '2017-11-16 00:00:00', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL), ('4', '4', 'lawn', '1', '2017-11-16 00:00:00', '2017-11-09 00:00:00', '2017-11-09 00:00:00', NULL);




