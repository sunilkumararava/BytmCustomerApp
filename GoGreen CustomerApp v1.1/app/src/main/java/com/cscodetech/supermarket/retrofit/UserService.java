package com.cscodetech.supermarket.retrofit;


import com.google.gson.JsonObject;

import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface UserService {



    @POST(APIClient.APPEND_URL + "p_country_code.php")
    Call<JsonObject> getCountry(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_reg_user.php")
    Call<JsonObject> getRegister(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_profile.php")
    Call<JsonObject> getUpdate(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_mobile_check.php")
    Call<JsonObject> getCheckMobile(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_address_user.php")
    Call<JsonObject> setAddress(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_user_login.php")
    Call<JsonObject> login(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_home_data.php")
    Call<JsonObject> getHome(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_list_pincode.php")
    Call<JsonObject> getPinCode(@Body RequestBody requestBody);



    @POST(APIClient.APPEND_URL + "p_rand_product.php")
    Call<JsonObject> getRandomProduct(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_cat_product.php")
    Call<JsonObject> getCatProduct(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_cat_list.php")
    Call<JsonObject> getCatList(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_brand_list.php")
    Call<JsonObject> getBrand(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_address_list.php")
    Call<JsonObject> getAddress(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_product_cart_validate.php")
    Call<JsonObject> getProductCartAddress(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_check_coupon.php")
    Call<JsonObject> checkCoupon(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_couponlist.php")
    Call<JsonObject> getCouponList(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_paymentgateway.php")
    Call<JsonObject> getPaymentList(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_order_now.php")
    Call<JsonObject> getOrderNow(@Body RequestBody requestBody);


    @POST(APIClient.APPEND_URL + "p_order_history.php")
    Call<JsonObject> getOrder(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_store_list.php")
    Call<JsonObject> getStore(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_prescription_history.php")
    Call<JsonObject> getPredationOrder(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_order_product_list.php")
    Call<JsonObject> getOrderHistory(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_order_cancel.php")
    Call<JsonObject> getOrderCancel(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_prescription_cancle.php")
    Call<JsonObject> getPresOrderCancel(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_prescription_order_product_list.php")
    Call<JsonObject> getPrescriptionOrderHistry(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_product_search.php")
    Call<JsonObject> getSearch(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_notification_list.php")
    Call<JsonObject> getNote(@Body RequestBody requestBody);

    @POST(APIClient.APPEND_URL + "p_forget_password.php")
    Call<JsonObject> forgotPassword(@Body RequestBody requestBody);
}
