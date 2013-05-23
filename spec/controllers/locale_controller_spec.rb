require 'spec_helper'

describe LocaleController do
	let(:ar) { :ar }
	let(:en) { :en }
	
	describe 'update action' do
		context 'to en' do
			it 'should pass en' do
				put :update, locale: en
				response.should redirect_to leaves_path(locale: en)
			end
		end
		
		context 'to ar' do
			it 'should pass ar' do
				put :update, locale: ar
				response.should redirect_to leaves_path(locale: ar)
			end
		end
	end
end
