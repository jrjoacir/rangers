module Validators
  module Universe
    def already_exist!
      already_exist_error if Models::Universe.where(name: universe.name).first
    end

    def not_found!
      not_found_error unless universe
    end

    private

    def already_exist_error
      raise Errors::AlreadyExist, "Universe #{universe.name} already exists"
    end

    def not_found_error
      raise Errors::NotFound, 'Universe does not exist'
    end
  end
end
