INSERT INTO Users(NickName) VALUES ('Aidan1')
INSERT INTO Users(NickName) VALUES ('Aliyeffa')
INSERT INTO Users(NickName) VALUES ('Kalantarli23')
INSERT INTO Users(NickName) VALUES ('Jalee')


INSERT INTO Phones(UserPhone,UserId) VALUES (1234,1)
INSERT INTO Phones(UserPhone,UserId) VALUES (5678,2)
INSERT INTO Phones(UserPhone,UserId) VALUES (2234,3)
INSERT INTO Phones(UserPhone,UserId) VALUES (1233,4)

INSERT INTO Friends(UserFriendName) VALUES('Lala')
INSERT INTO Friends(UserFriendName) VALUES('Yusura')
INSERT INTO Friends(UserFriendName) VALUES('Fedya')
INSERT INTO Friends(UserFriendName) VALUES('Memo')
INSERT INTO Friends(UserFriendName) VALUES('Aitac')

INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(1,2)
INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(2,2)
INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(3,4)
INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(2,3)
INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(1,4)
INSERT INTO UsersAndFriends(UserId,FriendId) VALUES(3,3)

INSERT INTO UserWithFriendMessages(MessageText,MessageSender,MessageRecipent) VALUES ('Hi,Lala',4,1)
INSERT INTO UserWithFriendMessages(MessageText,MessageSender,MessageRecipent) VALUES ('Hi,Aitac',4,5)
INSERT INTO UserWithFriendMessages(MessageText,MessageSender,MessageRecipent) VALUES ('Hi,Memo',4,4)


SELECT NickName,UserPhone
FROM Users,Phones
Where Phones.UserId=Users.Id     --Users table with Phones table one to one

SELECT NickName,UserFriendName
FROM Users,Friends,UsersAndFriends
WHERE UsersAndFriends.UserId=Users.Id and UsersAndFriends.FriendId=Friends.Id  --Users table with Friends table many to many

SELECT NickName,UserFriendName,MessageText
FROM Users,Friends,UserWithFriendMessages
WHERE UserWithFriendMessages.MessageSender=Users.Id and UserWithFriendMessages.MessageRecipent=Friends.Id ---Users table with UserWithFriendMessage table one to many



