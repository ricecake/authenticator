BEGIN;

CREATE TABLE domain (
  id SERIAL PRIMARY KEY
);
CREATE TABLE user (
  id SERIAL PRIMARY KEY
);
CREATE TABLE credentials (
  id         SERIAL PRIMARY KEY,
  user       NOT NULL REFERENCES(user.id),
  effective  TIMESTAMP DEFAULT NOW(),
  version    INTEGER NOT NULL,
  salt       BYTEA NOT NULL,
  hash       BYTEA NOT NULL
);
CREATE TABLE totp_secret (
  id         SERIAL PRIMARY KEY,
  user       UNIQUE NOT NULL REFERENCES(user.id),
  version    INTEGER NOT NULL,
  salt       BYTEA NOT NULL,
  cipher     BYTEA NOT NULL
);
CREATE TABLE action (
  id SERIAL PRIMARY KEY,
  name LTREE NOT NULL
);
CREATE TABLE role (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
CREATE TABLE group (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
CREATE TABLE ratelimit (
  id SERIAL PRIMARY KEY,
  count INTEGER NOT NULL,
  window INTEGER NOT NULL
);

-- user domain many/many
CREATE TABLE user_domain (
  id SERIAL PRIMARY KEY
);
-- user action many/many
CREATE TABLE user_action (
  id SERIAL PRIMARY KEY
);
-- user role many/many
CREATE TABLE user_role (
  id SERIAL PRIMARY KEY
);
-- user group many/many
CREATE TABLE user_group (
  id SERIAL PRIMARY KEY
);
-- group role many/many
CREATE TABLE group_role (
  id SERIAL PRIMARY KEY
);
-- group action many/many
CREATE TABLE group_action (
  id SERIAL PRIMARY KEY
);
-- role action many/many
CREATE TABLE role_action (
  id SERIAL PRIMARY KEY
);
-- base domain ratelimit
CREATE TABLE domain_ratelimit  (
  id SERIAL PRIMARY KEY
);
-- base group ratelimit
CREATE TABLE group_ratelimit (
  id SERIAL PRIMARY KEY
);
-- base role ratelimit
CREATE TABLE role_ratelimit (
  id SERIAL PRIMARY KEY
);
-- base user ratelimit
CREATE TABLE user_ratelimit (
  id SERIAL PRIMARY KEY
);
-- base action ratelimit
CREATE TABLE action_ratelimit (
  id SERIAL PRIMARY KEY
);
-- action rate limit per domain
CREATE TABLE domain_action_ratelimit  (
  id SERIAL PRIMARY KEY
);
-- action rate limit per group
CREATE TABLE group_action_ratelimit (
  id SERIAL PRIMARY KEY
);
-- action rate limit per role
CREATE TABLE role_action_ratelimit (
  id SERIAL PRIMARY KEY
);
-- action rate limit per user
CREATE TABLE user_action_ratelimit (
  id SERIAL PRIMARY KEY
);

COMMIT;
