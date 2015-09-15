BEGIN;

CREATE TABLE domain (
);
CREATE TABLE user (
);
CREATE TABLE action (
);
CREATE TABLE role (
);
CREATE TABLE group (
);
CREATE TABLE ratelimit (
);

-- user domain many/many
CREATE TABLE user_domain (
);
-- user action many/many
CREATE TABLE user_action (
);
-- user role many/many
CREATE TABLE user_role (
);
-- user group many/many
CREATE TABLE user_group (
);
-- group role many/many
CREATE TABLE group_role (
);
-- group action many/many
CREATE TABLE group_action (
);
-- role action many/many
CREATE TABLE role_action (
);
-- base domain ratelimit
CREATE TABLE domain_ratelimit  (
);
-- base group ratelimit
CREATE TABLE group_ratelimit (
);
-- base role ratelimit
CREATE TABLE role_ratelimit (
);
-- base user ratelimit
CREATE TABLE user_ratelimit (
);
-- base action ratelimit
CREATE TABLE action_ratelimit (
);
-- action rate limit per domain
CREATE TABLE domain_action_ratelimit  (
);
-- action rate limit per group
CREATE TABLE group_action_ratelimit (
);
-- action rate limit per role
CREATE TABLE role_action_ratelimit (
);
-- action rate limit per user
CREATE TABLE user_action_ratelimit (
);

COMMIT;
