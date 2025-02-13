require "rails_helper"

RSpec.describe AppealsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/appeals").to route_to("appeals#index")
    end

    it "routes to #new" do
      expect(get: "/appeals/new").to route_to("appeals#new")
    end

    it "routes to #show" do
      expect(get: "/appeals/1").to route_to("appeals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/appeals/1/edit").to route_to("appeals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/appeals").to route_to("appeals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/appeals/1").to route_to("appeals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/appeals/1").to route_to("appeals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/appeals/1").to route_to("appeals#destroy", id: "1")
    end
  end
end
