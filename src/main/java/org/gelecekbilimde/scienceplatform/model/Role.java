package org.gelecekbilimde.scienceplatform.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.*;
import java.util.stream.Collectors;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "role")
public class Role {

	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "role", length = 55, nullable = false, unique = true)
	private String role;

	@Column(name = "description", length =255, nullable = true)
	private String description;

	private Boolean isDefault;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "role_permission",
		joinColumns = @JoinColumn(name = "role_id"),
		inverseJoinColumns = @JoinColumn(name = "permission_id"))
	@Fetch(FetchMode.SELECT)
	private Set<Permission> permissions = new HashSet<>();

	public List<SimpleGrantedAuthority> getPermissions(){
		var authorities = permissions
			.stream()
			.map(permission -> new SimpleGrantedAuthority(permission.getPermission()))
			.collect(Collectors.toList());
		authorities.add(new SimpleGrantedAuthority("ROLE_" + getRole()));


		return  authorities;
	}
}
