package org.gelecekbilimde.scienceplatform.ticket.controller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.gelecekbilimde.scienceplatform.common.model.request.PagingRequest;
import org.gelecekbilimde.scienceplatform.common.model.response.PagingResponse;
import org.gelecekbilimde.scienceplatform.common.model.response.Response;
import org.gelecekbilimde.scienceplatform.ticket.model.Ticket;
import org.gelecekbilimde.scienceplatform.ticket.model.request.TicketCreateRequest;
import org.gelecekbilimde.scienceplatform.ticket.model.response.TicketResponse;
import org.gelecekbilimde.scienceplatform.ticket.service.TicketService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user/ticket")
class TicketUserController {

	private final TicketService ticketService;

	@GetMapping
	@Valid
	@PreAuthorize("hasAuthority('self:ticket:read')")
	public Response<PagingResponse<TicketResponse>> ticketReadSelf(PagingRequest request) {
		final PagingResponse<TicketResponse> ticketResponses = ticketService.ticketReadSelf(request);
		return Response.ok(ticketResponses);
	}

	@PostMapping
	@PreAuthorize("hasAuthority('self:ticket:create')")
	public Response<Ticket> ticketCreateSelf(@RequestBody @Valid TicketCreateRequest request) {
		Ticket ticketResponse = ticketService.ticketCreateSelf(request);
		return Response.create(ticketResponse);
	}

}
