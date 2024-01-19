DROP FUNCTION IF EXISTS jwt_verify(cert_pub_key text, jwt_token text, jwt_issuer text);

CREATE OR REPLACE FUNCTION jwt_verify(cert_pub_key text, jwt_token text, jwt_issuer text) 
	RETURNS text AS 'jwt_func.so', 'jwt_verify_rs256'
	LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS jwt_decode(jwt_token text);

CREATE OR REPLACE FUNCTION jwt_decode(jwt_token text)
	RETURNS text
	AS 'jwt_func.so', 'jwt_decode'
	LANGUAGE C STRICT;

DROP FUNCTION IF EXISTS jwt_create(jwt_priv_key text, jwt_data text);

CREATE OR REPLACE FUNCTION jwt_create(jwt_priv_key text, jwt_data text)
        RETURNS text
	AS 'jwt_func.so', 'jwt_create_rs256'
	LANGUAGE C STRICT;

