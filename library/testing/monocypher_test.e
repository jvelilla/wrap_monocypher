note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	MONOCYPHER_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_generate_public_key_from_random_generated_key
		local
			sk: ARRAY [NATURAL_8]
				-- Random Secret key.
			pk: ARRAY [NATURAL_8]
				-- Private key.
			salt: SALT_XOR_SHIFT_64_GENERATOR
		do
			create salt.make (32)
			sk := salt.new_sequence
			pk := {MONOCYPHER_FUNCTIONS}.compute_key_exchange_public_key (sk)
		end

	test_generate_key
		do
			assert ("Exptected lenght", {MONOCYPHER_FUNCTIONS}.generate_key_with_chacha20.count = 32)
		end


	test_key_exchange_random
		local
			a_key_pair: TUPLE [priv: ARRAY [NATURAL_8]; pub: ARRAY [NATURAL_8]]
			b_key_pair: TUPLE [priv: ARRAY [NATURAL_8]; pub: ARRAY [NATURAL_8]]
			a_shared_secret: ARRAY[NATURAL_8]
			b_shared_secret: ARRAY[NATURAL_8]
		do
			a_key_pair := {MONOCYPHER_FUNCTIONS}.generate_key_exchange_key_pair
			b_key_pair := {MONOCYPHER_FUNCTIONS}.generate_key_exchange_key_pair
			b_shared_secret := {MONOCYPHER_FUNCTIONS}.key_exchange (b_key_pair.priv, a_key_pair.pub)
        	a_shared_secret := {MONOCYPHER_FUNCTIONS}.key_exchange (a_key_pair.priv, b_key_pair.pub)
        	assert ("Expected equals", a_shared_secret.same_items (b_shared_secret))
		end

	

end


