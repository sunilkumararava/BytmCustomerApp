package com.cscodetech.supermarket.adepter;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.cscodetech.supermarket.R;
import com.cscodetech.supermarket.model.StoreDataItem;
import com.cscodetech.supermarket.retrofit.APIClient;
import com.cscodetech.supermarket.ui.StoreActivity;
import com.cscodetech.supermarket.utiles.DatabaseHelper;
import com.cscodetech.supermarket.utiles.SessionManager;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;

import static com.cscodetech.supermarket.utiles.SessionManager.storeid;
import static com.cscodetech.supermarket.utiles.SessionManager.storename;

public class StoreAdepter extends RecyclerView.Adapter<StoreAdepter.ViewHolder> {


    private LayoutInflater mInflater;
    Context mContext;
    List<StoreDataItem> storeData;
    SessionManager sessionManager;
    DatabaseHelper helper;
    public StoreAdepter(Context context, List<StoreDataItem> s) {
        this.mInflater = LayoutInflater.from(context);
        this.storeData = s;
        this.mContext = context;
        sessionManager = new SessionManager(mContext);
        helper=new DatabaseHelper(context);
    }

    @Override
    public StoreAdepter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = mInflater.inflate(R.layout.custome_store, parent, false);
        return new StoreAdepter.ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(StoreAdepter.ViewHolder holder, int i) {

        StoreDataItem history = storeData.get(i);
        holder.txtName.setText("" + history.getTitle());
        holder.txtItem.setText(history.getTotalitem() + " Items");
        holder.txtOpenstuts.setText(history.getIsOpen() + "");
        holder.rating.setNumStars(Integer.parseInt(history.getStar()));
        Glide.with(mContext).load(APIClient.baseUrl + history.getvImg()).thumbnail(Glide.with(mContext).load(R.drawable.ezgifresize)).centerCrop().into(holder.imgStore);
        holder.lvlItemclick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (Integer.parseInt(history.getTotalitem()) == 0) {
                    Toast.makeText(mContext, "Currently Product Not Available !!!", Toast.LENGTH_SHORT).show();
                } else {
                    Cursor res = helper.getAllData();
                    if (res.getCount() !=0 && !sessionManager.getStringData(storeid).equalsIgnoreCase(history.getId())) {
                        StoreActivity.getInstance().bottonCardClear();
                    } else {
                        StoreActivity.getInstance().changeStore = true;
                        sessionManager.setStringData(storeid, history.getId());
                        sessionManager.setStringData(storename, history.getTitle());
                        StoreActivity.getInstance().finish();
                    }

                }

            }
        });
    }

    @Override
    public int getItemCount() {
        return storeData.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.txt_name)
        TextView txtName;
        @BindView(R.id.txt_noitem)
        TextView txtItem;
        @BindView(R.id.txt_openstuts)
        TextView txtOpenstuts;
        @BindView(R.id.img_store)
        ImageView imgStore;
        @BindView(R.id.lvl_itemclick)
        LinearLayout lvlItemclick;
        @BindView(R.id.rating)
        RatingBar rating;


        ViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }

    }


}