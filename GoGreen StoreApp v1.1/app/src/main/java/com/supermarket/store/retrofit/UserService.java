package com.supermarket.store.retrofit;


import com.google.gson.JsonObject;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface UserService {


    @POST(APIClient.APPEND_URL + "store_login.php")
    Call<JsonObject> getLogin(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "store_appstatus.php")
    Call<JsonObject> getStatus(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "total_order_report.php")
    Call<JsonObject> getDesbord(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "olist.php")
    Call<JsonObject> getOlist(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "complete_order.php")
    Call<JsonObject> getComplete(@Body JsonObject object);
    
    @POST(APIClient.APPEND_URL + "order_status_wise.php")
    Call<JsonObject> getPending(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "noti.php")
    Call<JsonObject> getNoti(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "ostatus.php")
    Call<JsonObject> getOstatus(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "area.php")
    Call<JsonObject> getArea(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "profile.php")
    Call<JsonObject> updateProfile(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "order_product_list.php")
    Call<JsonObject> getOrderDetail(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "total_product_list.php")
    Call<JsonObject> getTotalProduct(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "make_decision.php")
    Call<JsonObject> getMackDecision(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "s_rider_list.php")
    Call<JsonObject> getRiderlist(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "ass_rider.php")
    Call<JsonObject> getAssrider(@Body JsonObject object);

    @POST(APIClient.APPEND_URL + "change_stock_status.php")
    Call<JsonObject> changestock(@Body JsonObject object);

}
