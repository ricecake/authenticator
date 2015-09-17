BEGIN;

CREATE TABLE domain (
  id SERIAL
);
CREATE TABLE user (
  id SERIAL
);
CREATE TABLE credentials (
  id      SERIAL,
  user    REFERENCES(user.id)
);
CREATE TABLE action (
  id SERIAL
);
CREATE TABLE role (
  id SERIAL
);
CREATE TABLE group (
  id SERIAL
);
CREATE TABLE ratelimit (
  id SERIAL
);

-- user domain many/many
CREATE TABLE user_domain (
  id SERIAL
);
-- user action many/many
CREATE TABLE user_action (
  id SERIAL
);
-- user role many/many
CREATE TABLE user_role (
  id SERIAL
);
-- user group many/many
CREATE TABLE user_group (
  id SERIAL
);
-- group role many/many
CREATE TABLE group_role (
  id SERIAL
);
-- group action many/many
CREATE TABLE group_action (
  id SERIAL
);
-- role action many/many
CREATE TABLE role_action (
  id SERIAL
);
-- base domain ratelimit
CREATE TABLE domain_ratelimit  (
  id SERIAL
);
-- base group ratelimit
CREATE TABLE group_ratelimit (
  id SERIAL
);
-- base role ratelimit
CREATE TABLE role_ratelimit (
  id SERIAL
);
-- base user ratelimit
CREATE TABLE user_ratelimit (
  id SERIAL
);
-- base action ratelimit
CREATE TABLE action_ratelimit (
  id SERIAL
);
-- action rate limit per domain
CREATE TABLE domain_action_ratelimit  (
  id SERIAL
);
-- action rate limit per group
CREATE TABLE group_action_ratelimit (
  id SERIAL
);
-- action rate limit per role
CREATE TABLE role_action_ratelimit (
  id SERIAL
);
-- action rate limit per user
CREATE TABLE user_action_ratelimit (
  id SERIAL
);

COMMIT;
