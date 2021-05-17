require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "lets a signed in user create a new product" do
    login_as users(:luiz)
    visit "/products/new"
    # save_and_open_screenshot

    fill_in "product_name", with: "Music school"
    fill_in "product_tagline", with: "Visit us at Alameda Yayá"
    # save_and_open_screenshot

    click_on 'Create Product'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
    assert_text "Visit us at Alameda Yayá"
  end
end
