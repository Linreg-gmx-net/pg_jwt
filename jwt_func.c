#include <postgres.h>
#include <fmgr.h>
#include <funcapi.h>
#include <utils/builtins.h>

#ifdef PG_MODULE_MAGIC
PG_MODULE_MAGIC;
#endif

//extern void jwt_init();

extern char* _jwt_decode(const char* token_str, char** token_header, char** token_payload);
extern char* _jwt_verify(const char* cert_str,const char* token_str, const char* token_issuer, char** token_header, char** token_payload);
extern char* _jwt_create(const char* cert_str,const char* token_str, char** token_payload);

// extern void jwt_clear();
PG_FUNCTION_INFO_V1(jwt_decode);

Datum jwt_decode(PG_FUNCTION_ARGS) {
    text *jwt_token = PG_GETARG_TEXT_PP(0);

    char *token_str = text_to_cstring(jwt_token);

    char *token_header = NULL;
    char *token_payload = NULL;
    char *ret_text = NULL;

    ereport(NOTICE, errmsg("jwt_decode START"));

    ereport(NOTICE, errmsg("Token: %s", token_str));

    ret_text = _jwt_decode(token_str, &token_header, &token_payload);

    ereport(NOTICE, errmsg("jwt_decode decoded"));
    if (ret_text != NULL) {
        ereport(ERROR,
                (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
                 errmsg("JWT verification failed: %s", ret_text)));
        PG_RETURN_NULL();
    } else {

        ereport(NOTICE, errmsg("jwt_decode ENDE"));

        if(token_payload == NULL) {
            PG_RETURN_NULL();
        } else {
            ereport(NOTICE, errmsg("Token-Payload: %s", token_payload));
            PG_RETURN_TEXT_P(cstring_to_text(token_payload));
            free(token_payload);
        }
    }

}

PG_FUNCTION_INFO_V1(jwt_verify_rs256);

Datum jwt_verify_rs256(PG_FUNCTION_ARGS) {
    text *public_key_cert = PG_GETARG_TEXT_PP(0);
    text *jwt_token = PG_GETARG_TEXT_PP(1);
    text *jwt_issuer = PG_GETARG_TEXT_PP(2);

    char *cert_str = text_to_cstring(public_key_cert);
    char *token_str = text_to_cstring(jwt_token);
    char *token_issuer = text_to_cstring(jwt_issuer);

    char *token_header = NULL;
    char *token_payload = NULL;
    char *ret_text = NULL;

    ereport(NOTICE, errmsg("jwt_verify_rs256 START"));

    ereport(NOTICE, errmsg("Token: %s", token_str));

    ret_text = _jwt_verify(cert_str, token_str, token_issuer, &token_header, &token_payload);

    ereport(NOTICE, errmsg("jwt_verify_rs256 decoded"));
    if (ret_text != NULL) {
        ereport(ERROR,
                (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
                 errmsg("JWT verification failed: %s", ret_text)));
        free(ret_text);
        PG_RETURN_NULL();
    } else {

        ereport(NOTICE, errmsg("jwt_verify_rs256 ENDE"));

        if(token_payload == NULL) {
            PG_RETURN_NULL();
        } else {
            ereport(NOTICE, errmsg("Verify! Token-Payload: %s", token_payload));
            PG_RETURN_TEXT_P(cstring_to_text(token_payload));
            free(token_payload);
        }
    }
}

PG_FUNCTION_INFO_V1(jwt_create_rs256);

Datum jwt_create_rs256(PG_FUNCTION_ARGS) {
    text *public_key_cert = PG_GETARG_TEXT_PP(0);
    text *jwt_token = PG_GETARG_TEXT_PP(1);
    //text *jwt_issuer = PG_GETARG_TEXT_PP(2);

    char *cert_str = text_to_cstring(public_key_cert);
    char *token_str = text_to_cstring(jwt_token);
 //   char *token_issuer = text_to_cstring(jwt_issuer);

    //char *token_header = NULL;
    char *token_payload = NULL;
    char *ret_text = NULL;

    ereport(NOTICE, errmsg("jwt_create_rs256 START"));

    ereport(NOTICE, errmsg("Priv-Cert: %s", cert_str));
    ereport(NOTICE, errmsg("Payload: %s", token_str));

    ret_text = _jwt_create(cert_str, token_str, &token_payload);

    ereport(NOTICE, errmsg("jwt_create_rs256 created"));
    if (ret_text != NULL) {
        ereport(ERROR,
                (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
                 errmsg("JWT verification failed: %s", ret_text)));
        free(ret_text);
        PG_RETURN_NULL();
    } else {

        ereport(NOTICE, errmsg("jwt_create_rs256 ENDE"));

        if(token_payload == NULL) {
            PG_RETURN_NULL();
        } else {
            ereport(NOTICE, errmsg("Created! Token: %s", token_payload));
            PG_RETURN_TEXT_P(cstring_to_text(token_payload));
            free(token_payload);
        }
    }
}
