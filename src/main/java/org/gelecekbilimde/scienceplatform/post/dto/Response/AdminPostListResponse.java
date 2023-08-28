package org.gelecekbilimde.scienceplatform.post.dto.Response;

import lombok.Builder;
import lombok.Getter;

import org.gelecekbilimde.scienceplatform.comment.dto.Domain.response.CommentResponse;
import org.gelecekbilimde.scienceplatform.postMedia.dto.Response.PostMediaResponse;
import org.gelecekbilimde.scienceplatform.user.dto.Response.UserResponse;
import org.gelecekbilimde.scienceplatform.postProcess.enums.PostProcessEnum;

import java.util.List;


@Getter
@Builder
public class AdminPostListResponse {


	private String header;
	private String slug;
	private String content;
	private PostProcessEnum lastProcess;
	private List<String> label;
	private Integer likeCount;
	private Boolean active;
	private Boolean copyrightControl;
	private Boolean typoControl;
	private Boolean dangerousControl;
	private UserResponse user;
	private CommentResponse comment;
	private PostMediaResponse media;
}
