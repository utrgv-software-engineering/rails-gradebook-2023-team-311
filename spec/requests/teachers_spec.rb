RSpec.describe 'Teachers API', type: :request do
  # Initialize test data
  let!(:teachers) { create_list(:teacher, 10) }

  # Test suite for GET /teachers
  describe 'GET /teachers' do
    # make HTTP get request before each example
    before { get '/teachers' }

    it 'returns teachers' do
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq('text/html; charset=utf-8') # add this line
      expect(response.body).not_to be_empty
    end
  end
end