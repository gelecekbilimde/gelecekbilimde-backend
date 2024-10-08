package org.gelecekbilimde.scienceplatform.notification.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.gelecekbilimde.scienceplatform.notification.model.request.PushNotificationTopicRequest;
import org.gelecekbilimde.scienceplatform.notification.model.request.PushNotificationUserRequest;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class PushNotificationService { // TODO : interface yazılmalı ve bu sınıf package-private olmalı

	private final FCMService fcmService;

	/**
	 * Send push notification to user by user id.
	 *
	 * @param request PushNotificationTopicRequest
	 */
	public void sendPushNotificationToUser(PushNotificationUserRequest request) {
		try {
			fcmService.sendMessageToTokenList(request);
		} catch (Exception exception) {
			log.error(exception.getMessage(), exception);
		}
	}

	/**
	 * Send push notification to topic.
	 *
	 * @param request PushNotificationTopicRequest
	 * @implNote PushNotificationTopicRequest.builder()
	 * .topic("youtube-yeni-video")
	 * .title("Yeni video yok")
	 * .message("Yeni video yok : " + videoTitle)
	 * .build()
	 * );
	 */
	public void sendPushNotificationToTopic(PushNotificationTopicRequest request) {
		try {
			fcmService.sendMessageToTopic(request);
		} catch (Exception exception) {
			log.error(exception.getMessage(), exception);
		}
	}
}
