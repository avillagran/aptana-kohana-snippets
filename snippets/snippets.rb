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

snippet 'Kohana Rails Action' do |s|
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


with_defaults :scope => 'source.php source.php.embedded.block.html' do
  
end