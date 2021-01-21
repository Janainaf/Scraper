require_relative "../lib/maire_christmas"

describe "the get_townhall_email method" do
    it "Should be a string" do
        expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html").class).to eq(String)
    end
    it "Should be an email" do
        expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html").include?('@')).to eq(true)
    end
end

describe "the get_townhall_urls method" do
    it "Should be an array" do
        expect(get_townhall_urls.class).to eq(Array)
    end
    it "Should be URLs" do
        expect(get_townhall_urls[0].include?('html')).to eq(true)
   
end