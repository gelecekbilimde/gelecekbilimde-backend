package org.gelecekbilimde.scienceplatform.auth.model.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class LoginRequest {

	@NotNull(message = "Email cannot be null")
	@Email(message = "Email should be valid")
	@Size(max = 255, message = "gender should not be less than 255")
	private String email;

	@NotNull(message = "Password cannot be null")
	@Size(min = 8, max = 255, message = "Password should not be less than 8-255")
	private String password;

}
