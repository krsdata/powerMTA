USE vmail;

-- Add your first domain
INSERT INTO domain (domain, transport, settings, created)
            VALUES ('dnshookup.com', 'dovecot', 'default_user_quota:1024;', NOW());

-- Add your first normal user
INSERT INTO mailbox (username,
                     password,
                     name,
                     maildir,
                     quota,
                     domain,
                     isadmin,
                     isglobaladmin,
                     created)
             VALUES ('postmaster@dnshookup.com',
                     '{SSHA512}Nkzi6jc49Ol2JL9zJn/u/o0PqUlHt/oirvAzA4gw2gijqYZC4tR1cr9mEFOR9ykhvCjZHqajR9Eg2BAAumc0CPguXBAfdobp',
                     'postmaster',
                     'dnshookup.com/p/o/s/postmaster/',
                     1024,
                     'dnshookup.com',
                     1,
                     1,
                     NOW());

INSERT INTO forwardings (address, forwarding, domain, dest_domain, is_forwarding)
           VALUES ('postmaster@dnshookup.com', 'postmaster@dnshookup.com', 'dnshookup.com', 'dnshookup.com', 1);

-- Mark first mail user as global admin
INSERT INTO domain_admins (username, domain, created)
                   VALUES ('postmaster@dnshookup.com', 'ALL', NOW());
