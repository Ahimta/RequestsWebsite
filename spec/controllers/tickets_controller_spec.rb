require 'spec_helper'

describe TicketsController do
	ticket = { id: 0, applicant: 'X', line: 'y', user_id: 0 }
	param = { 'ticket' => { 'applicant' => 'X', 'line' => 'y', 'user_id' => '0' } }
	
	it_behaves_like 'show', Ticket, ticket, :ticket
	
	it_behaves_like 'new', Ticket, :ticket
	
	it_behaves_like 'create', Ticket, ticket, param, :ticket
end
