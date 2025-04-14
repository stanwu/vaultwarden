ALTER TABLE attachments CHANGE COLUMN `key` akey TEXT;
ALTER TABLE ciphers CHANGE COLUMN type atype INTEGER NOT NULL;
ALTER TABLE devices CHANGE COLUMN type atype INTEGER NOT NULL;
ALTER TABLE twofactor CHANGE COLUMN type atype INTEGER NOT NULL;
ALTER TABLE users CHANGE COLUMN `key` akey TEXT;
ALTER TABLE users_organizations CHANGE COLUMN `key` akey TEXT;
ALTER TABLE users_organizations CHANGE COLUMN type atype INTEGER NOT NULL;
