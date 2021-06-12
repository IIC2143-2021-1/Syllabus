require "rails_helper"

RSpec.describe GuidelinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/guidelines").to route_to("guidelines#index")
    end

    it "routes to #new" do
      expect(get: "/guidelines/new").to route_to("guidelines#new")
    end

    it "routes to #show" do
      expect(get: "/guidelines/1").to route_to("guidelines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/guidelines/1/edit").to route_to("guidelines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/guidelines").to route_to("guidelines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/guidelines/1").to route_to("guidelines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/guidelines/1").to route_to("guidelines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/guidelines/1").to route_to("guidelines#destroy", id: "1")
    end
  end
end
