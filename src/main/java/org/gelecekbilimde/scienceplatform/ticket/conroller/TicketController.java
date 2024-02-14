package org.gelecekbilimde.scienceplatform.ticket.conroller;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.gelecekbilimde.scienceplatform.common.PagingRequest;
import org.gelecekbilimde.scienceplatform.common.PagingResponse;
import org.gelecekbilimde.scienceplatform.common.Response;
import org.gelecekbilimde.scienceplatform.ticket.dto.domain.TicketDomain;
import org.gelecekbilimde.scienceplatform.ticket.dto.request.TicketUpdateRequest;
import org.gelecekbilimde.scienceplatform.ticket.dto.response.TicketResponse;
import org.gelecekbilimde.scienceplatform.ticket.service.TicketService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/ticket")
class TicketController {

	private final TicketService ticketService;

	@GetMapping
	@PreAuthorize("hasAuthority('ticket:read')")
	public Response<PagingResponse<TicketResponse>> ticketRead(@Valid PagingRequest request) {
		final PagingResponse<TicketResponse> ticketResponses = ticketService.ticketRead(request);
		return Response.ok(ticketResponses);
	}

	@PutMapping
	@PreAuthorize("hasAuthority('ticket:update')")
	public Response<TicketDomain> ticketUpdate(@RequestBody @Valid TicketUpdateRequest request) {
		TicketDomain ticketResponse = ticketService.updateTicket(request);
		return Response.create(ticketResponse);
	}

}
