#include "jwt-cpp/jwt.h"
#include <iostream>


extern "C" {
	char* _jwt_decode(const char* token_str, char** token_header, char** token_payload)
	{
		std::string jwtToken(token_str);

		try {
			// Verify the JWT token
			auto decodedToken = jwt::decode(jwtToken);

			// Get the JSON header and payload as strings
			std::string header = decodedToken.get_header();
			std::string payload = decodedToken.get_payload();

			(*token_payload) = (char*)malloc((payload.length() + 1) * sizeof(char));
			payload.copy( *token_payload, payload.length());
			(*token_payload)[payload.length()] = '\0';

		} catch (const std::exception& e) {
			// Handle any errors that occur during JWT verification
			//std::cerr << "Error: " << e.what() << std::endl;

			std::string error_string = e.what();
			char* exception_text = (char*)malloc((error_string.length() + 1) * sizeof(char));
			error_string.copy(exception_text, error_string.length());
			exception_text[error_string.length()] = '\0';

			return exception_text;
		}

		return NULL;
	};


	char* _jwt_verify(const char* cert_str,const char* token_str, const char* token_issuer, char** token_header, char** token_payload)
	{
		std::string jwtToken(token_str);
		std::string rsa_pub_key(cert_str);
		std::string jwt_issuer(token_issuer);

		try {
			// Verify the JWT token
			auto verify = jwt::verify().allow_algorithm(jwt::algorithm::rs256(rsa_pub_key, "", "", "")); //.with_issuer(jwt_issuer);

			auto decoded = jwt::decode(jwtToken);

			//verify.verify(decoded);

			std::string payload = decoded.get_payload();
			(*token_payload) = (char*)malloc((payload.length() + 1) * sizeof(char));
			payload.copy( *token_payload, payload.length());
			(*token_payload)[payload.length()] = '\0';

		} catch (const std::exception& e) {
			// Handle any errors that occur during JWT verification
			//std::cerr << "Error: " << e.what() << std::endl;

			std::string error_string = e.what();
			char* exception_text = (char*)malloc((error_string.length() + 1) * sizeof(char));
			error_string.copy(exception_text, error_string.length());
			exception_text[error_string.length()] = '\0';

			return exception_text;
		}
		return NULL;
	};

	char* _jwt_create(const char* cert_str,const char* token_str, char** token_payload)
	{
		std::string rsa_priv_key(cert_str);
		std::string jwt_payload(token_str);

		std::string jwt_token;

		try {

			auto token = jwt::create();

			picojson::value v;
			picojson::parse(v, jwt_payload);

			for(auto& obj_itr: v.get<picojson::object>() ) {
				token.set_payload_claim(obj_itr.first, obj_itr.second);
			}

			//auto decoded = jwt::decode(jwt_payload);

			/*for (auto& e : decoded.get_payload_json()) {
				//std::cout << e.first << " = " << e.second << std::endl;
				token.set_payload_claim(e.first, e.second);
			}*/

			jwt_token = token.sign(jwt::algorithm::rs256("", rsa_priv_key, "", ""));

			(*token_payload) = (char*)malloc((jwt_token.length() + 1) * sizeof(char));
			jwt_token.copy( *token_payload, jwt_token.length());
			(*token_payload)[jwt_token.length()] = '\0';

		} catch (const std::exception& e) {
			// Handle any errors that occur during JWT verification
			//std::cerr << "Error: " << e.what() << std::endl;

			std::string error_string = e.what();
			char* exception_text = (char*)malloc((error_string.length() + 1) * sizeof(char));
			error_string.copy(exception_text, error_string.length());
			exception_text[error_string.length()] = '\0';

			return exception_text;
		}

		return NULL;
	};
}
