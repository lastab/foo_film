require "rails_helper"

describe FilmsController do
  context "when html page is requsted" do
    it "responds with success" do
      get "index", :format => :html

      expect(response).to be_success
    end

    it "has two fields" do
      get "index", :format => :html
    end
  end


  context "when json page is requested" do
    it "responds with 200" do
      get "index", :format => :json

      expect(response).to be_success
    end

    it "has two fields" do
      get "index", :format => :json

      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
      expect(json['title']).to be_present
      expect(json['year']).to be_present\
    end
  end


  context "when xml page is requested" do
    it "responds with 200" do
      get "index", :format => :xml
      expect(response).to be_success
    end

    it "has two fields" do
      get "index", :format => :xml

      xml = Hash.from_xml(response.body)
      expect(xml['hash']).to be_present

      xml_hash = xml['hash']
      expect(xml_hash['title']).to be_present
      expect(xml_hash['year']).to be_present
    end
  end
end
