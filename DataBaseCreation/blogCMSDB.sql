CREATE TABLE "ROLE" (
	roleId SERIAL PRIMARY KEY,
<<<<<<< Updated upstream
    "role" varchar(30)
);

CREATE TABLE "USER" (
	userId SERIAL PRIMARY KEY,
    username varchar(30) not null,
    "password" varchar(100) not null,
    firstName varchar(30) not null,
    lastName varchar(30) not null,
    email varchar(30) not null,
    "enable" boolean not null
=======
    roleType VARCHAR(30) NOT NULL
);

CREATE TABLE HASHTAGS (
	hashtagId SERIAL PRIMARY KEY,
    hashtagName VARCHAR(40) NOT NULL
);

CREATE TABLE USERS (
	userId SERIAL PRIMARY KEY,
    userName VARCHAR(30) NOT NULL,
    userPassword VARCHAR(100) NOT NULL,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    isAdmin BOOLEAN NOT NULL
>>>>>>> Stashed changes
);

CREATE TABLE USER_ROLE (
	userId int,
    roleId int,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) references "USER"(userId),
    FOREIGN KEY (roleId) references "ROLE"(roleId)
);

CREATE TABLE BLOGPOST (
	blogpostId SERIAL PRIMARY KEY,
<<<<<<< Updated upstream
    timePosted TIMESTAMP with time zone,
    title varchar(100) not null,
    "type" varchar(10) not null,
    "status" varchar(10) not null,
    photoFileName varchar(255),
    "content" text not null,
    userId int,
    FOREIGN KEY (userId) references "USER"(userId)
);

CREATE TABLE "COMMENT" (
	commentId SERIAL PRIMARY KEY,
    timePosted TIMESTAMP with time zone,
    "content" varchar(280) not null,
    userId int,
    FOREIGN KEY (userId) references "USER"(userId),
    blogpostId int,
    FOREIGN KEY (blogpostId) references blogpost (blogpostId)
=======
    timePosted TIMESTAMP WITH TIME ZONE,
    blogTitle VARCHAR(100) NOT NULL,
    blogType VARCHAR(30) NOT NULL,
    blogStatus VARCHAR(30) NOT NULL,
    blogPhoto VARCHAR(255),
    blogContent TEXT NOT NULL,
    userId INT,
    FOREIGN KEY (userId) references USERS(userId)
);

CREATE TABLE BLOGCOMMENTS (
	commentId SERIAL PRIMARY KEY,
    timePosted TIMESTAMP with time zone,
    commentsContent TEXT NOT NULL,
    userId INT,
    FOREIGN KEY (userId) REFERENCES USERS(userId),
    blogpostId INT,
    FOREIGN KEY (blogpostId) REFERENCES BLOGPOSTS (blogpostId)
>>>>>>> Stashed changes
);

CREATE TABLE HASHTAG (
	hashtagId SERIAL PRIMARY KEY,
    name varchar(30) not null
);

CREATE TABLE BLOGPOST_HASHTAG (
	blogpostId INT,
    hashtagId INT,
    PRIMARY KEY (blogpostId, hashtagId),
    FOREIGN KEY (blogpostId) REFERENCES BLOGPOSTS (blogpostId),
    FOREIGN KEY (hashtagId) REFERENCES HASHTAGS (hashtagId)
);
<<<<<<< Updated upstream
=======

CREATE TABLE USER_ROLE (
	userId INT,
    roleId INT,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) REFERENCES USERS(userId),
    FOREIGN KEY (roleId) REFERENCES ROLES(roleId)
);
>>>>>>> Stashed changes
