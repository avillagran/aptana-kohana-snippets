snippet 'controller' do |s|
  s.trigger = 'controller'
  s.expansion = "<?php defined('SYSPATH') or die('No direct script access.');
/**
 * ${1:ClassName}
 */
class Controller_${1:ClassName} extends Controller_${2:Application} {
  
  function action_index(${3:$args})
  {
    ${0:// TODO: Implement code}
  }
  
}"
end

snippet 'model' do |s|
  s.trigger = 'model'
  s.expansion = "<?php defined('SYSPATH') or die('No direct script access.');
/**
 * ${1:ClassName}
 */
class Model_${1:ClassName} extends ${2:ORM} {
  $0
}"
end

snippet 'Route with directory' do |s|
  s.trigger = 'routed'
  s.expansion = "Route::set('${1:name}', '${2:directory}/${3:controller}/${4:action}')
  ->defaults(array(
    'directory'  => '${2:directory}',
    'controller' => '${3:controller}',
    'action'     => '${4:action}'
  ));"
end

snippet 'Route' do |s|
  s.trigger = 'route'
  s.expansion = "Route::set('${1:name}', '${2:controller}/${3:action}')
  ->defaults(array(
    'controller' => '${2:controller}',
    'action'     => '${3:action}'
  ));"
end

snippet 'Kohana Rails Controller Action' do |s|
  s.trigger ='action'
  s.expansion = "
function action_${1:name}()
{
  \\$view = \\$this->get_view();

  $0
  
  \\$this->set_view(\\$view);
}
"
end

snippet 'Kohana Rails Controller Get - Set View' do |s|
  s.trigger = "getsetview"
  s.expansion = "\\$view = \\$this->get_view();

$0

\\$this->set_view(\\$view);"
end


with_defaults :scope => 'source.php source.php.embedded.block.html' do
  
end