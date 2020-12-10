package com.supermarket.store.fregment;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;

import com.supermarket.store.R;
import com.supermarket.store.activity.LoginActivity;
import com.supermarket.store.activity.ProfileActivity;
import com.supermarket.store.model.Ostatus;
import com.supermarket.store.model.RestResponse;
import com.supermarket.store.model.Store;
import com.supermarket.store.retrofit.APIClient;
import com.supermarket.store.retrofit.GetResult;
import com.supermarket.store.utils.CustPrograssbar;
import com.supermarket.store.utils.SessionManager;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import retrofit2.Call;

public class ProfileFragment extends Fragment implements GetResult.MyListener {

    @BindView(R.id.img_logout)
    ImageView imgLogout;
    @BindView(R.id.ed_username)
    TextView edUsername;
    @BindView(R.id.ed_email)
    TextView edEmail;
    @BindView(R.id.ed_phone)
    TextView edPhone;
    @BindView(R.id.switch1)
    Switch switch1;

    @BindView(R.id.txt_status)
    TextView txtStatus;
    @BindView(R.id.ed_ifsccode)
    TextView edIfsccode;

    @BindView(R.id.ed_acountnum)
    TextView edAcountnum;

    @BindView(R.id.ed_acountname)
    TextView edAcountname;

    @BindView(R.id.ed_phoneupi)
    TextView edPhoneupi;


    public ProfileFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    SessionManager sessionManager;
    Store user;
    CustPrograssbar custPrograssbar;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_profile, container, false);
        ButterKnife.bind(this, view);
        ProfileActivity.listener = this;
        sessionManager = new SessionManager(getActivity());
        custPrograssbar = new CustPrograssbar();
        user = sessionManager.getUserDetails("");
        edUsername.setText("" + user.getName());
        edEmail.setText("" + user.getEmail());
        edPhone.setText("" + user.getMobile());

        edPhoneupi.setText("" + user.getUpimob());
        edAcountname.setText("" + user.getAccname());
        edAcountnum.setText("" + user.getAccnum());
        edIfsccode.setText("" + user.getIfsc());

        if (sessionManager.getBooleanData("status")) {
            txtStatus.setText("Avaliable");
            switch1.setChecked(true);
        } else {
            switch1.setChecked(false);
            txtStatus.setText("Not Avaliable");
        }
        switch1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    getStatus("1");
                    txtStatus.setText("Avaliable");
                } else {
                    getStatus("0");
                    txtStatus.setText("Not Avaliable");

                }
            }
        });
        orderStatus();
        return view;
    }

    private void getStatus(String key) {
        custPrograssbar.prograssCreate(getActivity());
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("sid", user.getId());
            jsonObject.put("status", key);
            JsonParser jsonParser = new JsonParser();

            Call<JsonObject> call = APIClient.getInterface().getStatus((JsonObject) jsonParser.parse(jsonObject.toString()));
            GetResult getResult = new GetResult();
            getResult.setMyListener(this);
            getResult.callForLogin(call, "1");

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void orderStatus() {
        custPrograssbar.prograssCreate(getActivity());
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("sid", user.getId());

            JsonParser jsonParser = new JsonParser();

            Call<JsonObject> call = APIClient.getInterface().getStatus((JsonObject) jsonParser.parse(jsonObject.toString()));
            GetResult getResult = new GetResult();
            getResult.setMyListener(this);
            getResult.callForLogin(call, "2");

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void callback(JsonObject result, String callNo) {
        try {
            custPrograssbar.closePrograssBar();
            if (callNo.equalsIgnoreCase("1")) {
                Gson gson = new Gson();
                RestResponse response = gson.fromJson(result.toString(), RestResponse.class);
                if (response.getResult().equalsIgnoreCase("true")) {
                    sessionManager.setBooleanData("status", switch1.isChecked());
                }
            } else if (callNo.equalsIgnoreCase("2")) {
                Gson gson = new Gson();
                Ostatus ostatus = gson.fromJson(result.toString(), Ostatus.class);

                if (ostatus.getOrderData().getRiderStatus().equalsIgnoreCase("1")) {
                    switch1.setChecked(true);
                    sessionManager.setBooleanData("status", true);
                } else {
                    switch1.setChecked(false);
                    sessionManager.setBooleanData("status", false);
                }

            }

        } catch (Exception e) {
            e.toString();
        }

    }

    @OnClick(R.id.img_logout)
    public void onClick() {

    }

    public void onrefaress() {
        if (user != null && sessionManager != null) {
            user = sessionManager.getUserDetails("");
            edUsername.setText("" + user.getName());
            edEmail.setText("" + user.getEmail());
            edPhone.setText("" + user.getMobile());
        }

    }

    @Override
    public void onResume() {
        super.onResume();


    }

    @OnClick({R.id.img_logout})
    public void onClick(View view) {
        if (view.getId() == R.id.img_logout) {
            AlertDialog myDelete = new AlertDialog.Builder(getActivity())
                    .setTitle("Logout")
                    .setMessage("Are you sure you want to logout")
                    .setIcon(R.drawable.ic_logout)

                    .setPositiveButton("Logout", new DialogInterface.OnClickListener() {

                        public void onClick(DialogInterface dialog, int whichButton) {
                            //your deleting code
                            dialog.dismiss();
                            sessionManager.logoutUser();
                            getStatus("0");
                            txtStatus.setText("Not Avaliable");
                            startActivity(new Intent(getActivity(), LoginActivity.class));
                            getActivity().finish();
                        }

                    })
                    .setNegativeButton("cancel", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();

                        }
                    })
                    .create();
            myDelete.show();
        }
    }
}
