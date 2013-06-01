require 'spec_helper'

describe TicketsController do
	it_behaves_like 'new', Ticket
	
	it_behaves_like 'create', Ticket
end
