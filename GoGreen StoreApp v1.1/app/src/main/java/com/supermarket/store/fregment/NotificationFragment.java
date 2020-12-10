package com.supermarket.store.fregment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.supermarket.store.R;
import com.supermarket.store.model.Noti;
import com.supermarket.store.model.NotiItem;
import com.supermarket.store.model.Store;
import com.supermarket.store.retrofit.APIClient;
import com.supermarket.store.retrofit.GetResult;
import com.supermarket.store.utils.CustPrograssbar;
import com.supermarket.store.utils.SessionManager;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import retrofit2.Call;


public class NotificationFragment extends Fragment implements GetResult.MyListener {

    @BindView(R.id.recycle_delivery)
    RecyclerView recycleDelivery;
    @BindView(R.id.txt_nodata)
    TextView txtNodata;

    public NotificationFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    CustPrograssbar custPrograssbar;
    SessionManager sessionManager;
    Store user;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_notification, container, false);
        ButterKnife.bind(this, view);
        LinearLayoutManager recyclerLayoutManager = new LinearLayoutManager(getActivity());
        recycleDelivery.setLayoutManager(recyclerLayoutManager);

        custPrograssbar = new CustPrograssbar();
        sessionManager = new SessionManager(getActivity());
        user = sessionManager.getUserDetails("");


        getNotification();
        return view;
    }

    private void getNotification() {
        custPrograssbar.prograssCreate(getActivity());
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("sid", user.getId());
            JsonParser jsonParser = new JsonParser();

            Call<JsonObject> call = APIClient.getInterface().getNoti((JsonObject) jsonParser.parse(jsonObject.toString()));
            GetResult getResult = new GetResult();
            getResult.setMyListener(this);
            getResult.callForLogin(call, "1");

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void callback(JsonObject result, String callNo) {

        try {
            custPrograssbar.closePrograssBar();
            Gson gson = new Gson();
            Noti noti = gson.fromJson(result.toString(), Noti.class);

            if (noti.getResult().equalsIgnoreCase("true")) {
                if (noti.getData().isEmpty()) {
                    txtNodata.setVisibility(View.VISIBLE);
                } else {
                    NotificationAdepter myOrderAdepter = new NotificationAdepter(noti.getData());
                    recycleDelivery.setAdapter(myOrderAdepter);
                }
            } else {
                txtNodata.setVisibility(View.VISIBLE);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public class NotificationAdepter extends RecyclerView.Adapter<NotificationAdepter.ViewHolder> {

        private List<NotiItem> pendinglist;

        public NotificationAdepter(List<NotiItem> pendinglist) {
            this.pendinglist = pendinglist;
        }

        @Override
        public ViewHolder onCreateViewHolder(ViewGroup parent,
                                             int viewType) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.notification_item, parent, false);
            ViewHolder viewHolder = new ViewHolder(view);
            return viewHolder;
        }

        @Override
        public void onBindViewHolder(ViewHolder holder,
                                     int position) {
            NotiItem order = pendinglist.get(position);
            holder.txtTitel.setText("" + order.getMsg());
            holder.txtDate.setText(order.getDate());

        }

        @Override
        public int getItemCount() {
            return pendinglist.size();
        }

        public class ViewHolder extends RecyclerView.ViewHolder {
            @BindView(R.id.txt_titel)
            TextView txtTitel;
            @BindView(R.id.txt_date)
            TextView txtDate;

            public ViewHolder(View view) {
                super(view);
                ButterKnife.bind(this, view);
            }
        }
    }
}
