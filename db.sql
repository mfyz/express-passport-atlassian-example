CREATE TABLE users (
	id serial,
	username text DEFAULT null,
	email text DEFAULT null,
	passwd_hash text DEFAULT null,
	atlassianid text DEFAULT null,
	atlassiantoken text DEFAULT null,
	createdAt timestamp DEFAULT null,
	updatedAt timestamp DEFAULT null
)