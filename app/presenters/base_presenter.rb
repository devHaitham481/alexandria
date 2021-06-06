class BasePresenter 
    @build_attributes = []

    # Opent the door to class methods 
 

  class << self 
    attr_accessor :build_attributes 

    # Create the actual class method that will \
    # be used in the subclasses
    # we use the splash operation '*' to get all
    # the arguments passes in an array
    def build_with(*args)
      @build_attributes = args.map(&:to_s)
    end
  end
    attr_accessor :object, :params, :data

    def initialize(object, params, options = {} )
      @object = object
      @params = params 
      @options = options
      @data = HashWithIndifferentAccess.new
    end


    def as_json(*) 
      @data
    end
end
