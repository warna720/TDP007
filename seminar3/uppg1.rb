class Person

    def initialize (model, zip, licenseAge, gender, age)
        @model = model
        @zip = zip
        @licenseAge = licenseAge
        @gender = gender
        @age = age
        @points = 0
    end

    def evaluate_policy(filename)
        instance_eval(File.new(filename).read())
        @points
    end

    def om(*args)
        conditions = args[0..-2]
        points = args[-1]
        @points = eval(@points.to_s + points.to_s) if conditions.all?
    end

    def method_missing(method_name, condition, points)
        if (condition.include?(instance_variable_get("@#{method_name}")))
            @points = eval(@points.to_s + points.to_s)
        end
    end
end

#kalle = Person.new("Volvo", "58435", 2, "M", 32)
#puts kalle.evaluate_policy("policy.rb")
