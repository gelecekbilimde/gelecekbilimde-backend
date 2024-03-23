package org.gelecekbilimde.scienceplatform.ticket.conroller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.gelecekbilimde.scienceplatform.common.PagingResponse;
import org.gelecekbilimde.scienceplatform.common.Response;
import org.gelecekbilimde.scienceplatform.ticket.dto.request.TicketMessageRequest;
import org.gelecekbilimde.scienceplatform.ticket.dto.response.MessageResponse;
import org.gelecekbilimde.scienceplatform.ticket.service.TicketMessageService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/ticket-message")
class TicketMessageController {

	private final TicketMessageService ticketService;

	@GetMapping
	@PreAuthorize("hasAuthority('ticket:read')")
	public Response<PagingResponse<MessageResponse>> ticketMessageRead(@Valid TicketMessageRequest request) {
		final PagingResponse<MessageResponse> ticketResponses = ticketService.ticketMessageRead(request);
		return Response.ok(ticketResponses);
	}

}
