require "application_system_test_case"

class MapasTest < ApplicationSystemTestCase
   test "visiting the index" do
    visit mapas_url
      assert_selector "h1", text: "Mapa"
   end
end
