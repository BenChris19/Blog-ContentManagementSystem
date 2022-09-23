CREATE TABLE ROLES (
	roleId SERIAL PRIMARY KEY,
    "role" varchar(20)
);

CREATE TABLE HASHTAGS (
	hashtagId SERIAL PRIMARY KEY,
    name varchar(20) not null
);

CREATE TABLE USERS (
	userId SERIAL PRIMARY KEY,
    username varchar(20) not null,
    "password" varchar(50) not null,
    firstName varchar(20) not null,
    lastName varchar(20) not null,
    email varchar(20) not null,
    "enable" boolean not null
);

CREATE TABLE BLOGPOSTS (
	blogpostId SERIAL PRIMARY KEY,
    timePosted TIMESTAMP with time zone,
    title varchar(100) not null,
    "type" varchar(20) not null,
    "status" varchar(20) not null,
    photoFileName varchar(255),
    "content" text not null,
    userId int,
    FOREIGN KEY (userId) references "USER"(userId)
);

CREATE TABLE COMMENTS (
	commentId SERIAL PRIMARY KEY,
    timePosted TIMESTAMP with time zone,
    "content" text not null,
    userId int,
    FOREIGN KEY (userId) references "USER"(userId),
    blogpostId int,
    FOREIGN KEY (blogpostId) references blogpost (blogpostId)
);

CREATE TABLE BLOGPOST_HASHTAG (
	blogpostId int,
    hashtagId int,
    PRIMARY KEY (blogpostId, hashtagId),
    FOREIGN KEY (blogpostId) references blogpost (blogpostId),
    FOREIGN KEY (hashtagId) references hashtag (hashtagId)
);

CREATE TABLE USER_ROLE (
	userId int,
    roleId int,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) references "USER"(userId),
    FOREIGN KEY (roleId) references "ROLE"(roleId)
);
