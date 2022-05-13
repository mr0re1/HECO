builtin.module	{
	abc.function !fhe.secret<f64> @encryptedDouble {
		abc.function_parameter !fhe.secret<f64> @x
	}, {
		abc.block {
			
			abc.assignment {
				abc.variable @x
			}, {
				abc.binary_expression "*" {
					abc.literal_int 2
				}, {
					abc.variable @x
				}
			}

			abc.return {
				abc.variable @x
			}

		}
	}
}