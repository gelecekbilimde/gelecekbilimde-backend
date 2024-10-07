package org.gelecekbilimde.scienceplatform.user.model.entity;

import jakarta.persistence.*;
import lombok.*;
import org.gelecekbilimde.scienceplatform.common.model.entity.BaseEntity;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "gb_user_follow")
public class UserFollowEntity extends BaseEntity {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "follower_user_id")
	private String followerUserId;

	@Column(name = "followed_user_id")
	private String followedUserId;


}
