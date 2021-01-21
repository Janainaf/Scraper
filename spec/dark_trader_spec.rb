require_relative "../lib/dark_trader"

describe "the crypto_scrapper method" do
    it "Return an array" do
        expect(crypto_scrapper.class).to eq(Array)
    end
    it "Return hashes" do
        expect(crypto_scrapper[0].class).to eq(Hash)
    end
    
    it "Return more than 5 entries" do
        expect(crypto_scrapper.length > 5).to eq(true)
    end
    it "should return float in values" do
        expect(crypto_scrapper[0].fetch("BTC").class).to eq(Float)
    end
end