CREATE TABLE "ROLE" (
	roleId SERIAL PRIMARY KEY,
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
);

CREATE TABLE HASHTAG (
	hashtagId SERIAL PRIMARY KEY,
    name varchar(30) not null
);

CREATE TABLE BLOGPOST_HASHTAG (
	blogpostId int,
    hashtagId int,
    PRIMARY KEY (blogpostId, hashtagId),
    FOREIGN KEY (blogpostId) references blogpost (blogpostId),
    FOREIGN KEY (hashtagId) references hashtag (hashtagId)
);
