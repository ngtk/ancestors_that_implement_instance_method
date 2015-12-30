class Module
  def ancestors_that_implement_instance_method(instance_method)
    ancestors.find_all do |ancestor|
      (ancestor.instance_methods(false) + ancestor.private_instance_methods(false)).include?(instance_method)
    end
  end
end
