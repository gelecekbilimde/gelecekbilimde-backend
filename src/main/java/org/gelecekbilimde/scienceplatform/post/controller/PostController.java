package org.gelecekbilimde.scienceplatform.post.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.gelecekbilimde.scienceplatform.common.model.response.Response;
import org.gelecekbilimde.scienceplatform.post.model.Post;
import org.gelecekbilimde.scienceplatform.post.model.PostLike;
import org.gelecekbilimde.scienceplatform.post.model.mapper.PostLikeToResponseMapper;
import org.gelecekbilimde.scienceplatform.post.model.mapper.PostToResponseMapper;
import org.gelecekbilimde.scienceplatform.post.model.request.PostCreateRequest;
import org.gelecekbilimde.scienceplatform.post.model.response.PostLikeResponse;
import org.gelecekbilimde.scienceplatform.post.model.response.PostResponse;
import org.gelecekbilimde.scienceplatform.post.service.PostLikeToggleService;
import org.gelecekbilimde.scienceplatform.post.service.PostService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/post")
class PostController {

	private final PostService postService;
	private final PostLikeToggleService postLikeToggleService;

	private final PostToResponseMapper postToResponseMapper = PostToResponseMapper.initialize();
	private final PostLikeToResponseMapper postLikeToResponseMapper = PostLikeToResponseMapper.initialize();

	@PostMapping
	@PreAuthorize("hasAuthority('post:create')")
	public Response<PostResponse> savePost(@RequestBody @Valid PostCreateRequest request) {
		Post post = postService.save(request);
		return Response.create(postToResponseMapper.map(post));
	}

	@PutMapping("/{id}/like/toggle")
	@PreAuthorize("hasAuthority('post:create')")
	public Response<PostLikeResponse> toggleLikeOfPost(@PathVariable String id) {
		PostLike postLike = postLikeToggleService.toggleLikeOfPost(id);
		PostLikeResponse postLikeResponse = postLikeToResponseMapper.map(postLike);
		return Response.ok(postLikeResponse);
	}

}
