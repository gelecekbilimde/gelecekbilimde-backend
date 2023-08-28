package org.gelecekbilimde.scienceplatform.postMedia.service;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

import org.gelecekbilimde.scienceplatform.postMedia.dto.Request.PostMediaCreate;
import org.gelecekbilimde.scienceplatform.postMedia.mapper.PostMediaCreateToPostMediaModelMapper;
import org.gelecekbilimde.scienceplatform.postMedia.model.PostMedia;
import org.gelecekbilimde.scienceplatform.postMedia.repository.PostMediaRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PostMediaService {

	private final PostMediaRepository postMediaRepository;
	private static final PostMediaCreateToPostMediaModelMapper postMediaCreateToPostMediaModel = PostMediaCreateToPostMediaModelMapper.initialize();

	@Transactional
	public void savePostMedia(List<PostMediaCreate> postMediaCreateList) {
		postMediaCreateList
			.stream()
			.map(this::savePostMediaOne);
	}

	@Transactional
	public PostMediaCreate savePostMediaOne(@Valid PostMediaCreate postMediaCreate) {

		PostMedia postMedia = postMediaCreateToPostMediaModel.mapForSaving(postMediaCreate);

		PostMedia data = postMediaRepository.save(postMedia);
		postMedia.setId(data.getId());
		return postMediaCreate;
	}

}
