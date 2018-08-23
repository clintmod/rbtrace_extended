require 'rbtrace'

if ENV['OBJECTSPACE_TRACE_OBJECT_ALLOCATIONS'] then
  require 'objspace'
  ObjectSpace.trace_object_allocations_start
end
