package org.gelecekbilimde.scienceplatform.auth.model.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LogoutRequest {

	@NotBlank
	private String refreshToken;

}
