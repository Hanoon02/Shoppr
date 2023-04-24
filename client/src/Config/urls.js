const BASE = 'http://localhost:8800';

const GET_VENDOR_PRODUCTS = BASE + '/vendor/products';
const ADD_VENDOR_PRODUCT = BASE + '/vendor/add';
const UPDATE_VENDOR_PRODUCT = BASE + '/products/update';
const GET_CART_PRODUCTS = BASE + '/cart/products';
const GET_ORDERS = BASE + '/orders';
const GET_CATEGORIES = BASE + '/categories';

const TEST_CREATE_GET_USER = BASE + '/test/create_get_user';
const TEST_CREATE_GET_VENDOR = BASE + '/test/create_get_vendor';
const TEST_CREATE_GET_PRODUCT = BASE + '/test/create_get_product';

export {
    GET_VENDOR_PRODUCTS, ADD_VENDOR_PRODUCT, UPDATE_VENDOR_PRODUCT,
    GET_CART_PRODUCTS,
    GET_ORDERS,
    GET_CATEGORIES,
    TEST_CREATE_GET_USER, TEST_CREATE_GET_VENDOR, TEST_CREATE_GET_PRODUCT
};
