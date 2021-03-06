note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class CRYPTO_SIGN_CTX_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	ctx: CRYPTO_SIGN_CTX_ABSTRACT_STRUCT_API
			-- Access member `ctx`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_ctx(item) )
		ensure
			result_not_void: Result.item = c_ctx (item) 
		end

	set_ctx (a_value: CRYPTO_SIGN_CTX_ABSTRACT_STRUCT_API) 
			-- Set member `ctx`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_ctx (item, a_value.item)
		ensure
			ctx_set: ctx.item = a_value.item
		end

	hash: CRYPTO_BLAKE2B_CTX_STRUCT_API
			-- Access member `hash`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_hash(item) )
		ensure
			result_not_void: Result.item = c_hash (item) 
		end

	set_hash (a_value: CRYPTO_BLAKE2B_CTX_STRUCT_API) 
			-- Set member `hash`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_hash (item, a_value.item)
		ensure
			hash_set: hash.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct crypto_sign_ctx

	sizeof_external: INTEGER 
		external
			"C inline use <monocypher.h>"
		alias
			"sizeof(crypto_sign_ctx)"
		end

	c_ctx (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <monocypher.h>"
		alias
			"[
				&((crypto_sign_ctx*)$an_item)->ctx
			]"
		end

	set_c_ctx (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <monocypher.h>"
		alias
			"[
				((crypto_sign_ctx*)$an_item)->ctx =  *(crypto_sign_ctx_abstract*)$a_value
			]"
		end

	c_hash (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <monocypher.h>"
		alias
			"[
				&((crypto_sign_ctx*)$an_item)->hash
			]"
		end

	set_c_hash (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <monocypher.h>"
		alias
			"[
				((crypto_sign_ctx*)$an_item)->hash =  *(crypto_blake2b_ctx*)$a_value
			]"
		end

end
