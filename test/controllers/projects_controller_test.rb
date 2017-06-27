require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase

  test 'should create a new project' do
    token = Knock::AuthToken.new(payload: { sub: users(:jeff).id }).token
    request.env['HTTP_AUTHORIZATION'] = "Bearer #{token}"

    client = clients(:client1)
    assert_difference('Project.count') do
      post :create, params: {project: {title: 'AI', client_id: client.id}}
    end
    new_project = JSON.parse(@response.body)
    assert_equal 'AI', new_project['title']
    assert_equal client.id, new_project['client_id']
  end

end