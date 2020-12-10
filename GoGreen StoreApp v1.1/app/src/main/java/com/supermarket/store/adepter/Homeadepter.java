package com.supermarket.store.adepter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.supermarket.store.R;
import com.supermarket.store.model.StoreReportDataItem;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;

import static com.supermarket.store.retrofit.APIClient.Base_URL;

public class Homeadepter extends RecyclerView.Adapter<Homeadepter.ViewHolder> {
    private List<StoreReportDataItem> dataItemList;
    Context mContext;

    public Homeadepter(List<StoreReportDataItem> dataItemList,Context context) {
        this.dataItemList = dataItemList;
        mContext=context;
    }

    @Override
    public Homeadepter.ViewHolder onCreateViewHolder(ViewGroup parent,
                                                     int viewType) {
        View view = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.home_item, parent, false);
        Homeadepter.ViewHolder viewHolder = new Homeadepter.ViewHolder(view);
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(Homeadepter.ViewHolder holder,
                                 int position) {
        Log.e("position", "" + position);
        StoreReportDataItem item=dataItemList.get(position);
        holder.txtTitle.setText(""+item.getTitle());
        holder.txtVelues.setText(""+item.getReportData());
        Glide.with(mContext).load(Base_URL + item.getImgurl()).placeholder(R.drawable.ic_complet_order).into(holder.imgTop);


    }

    @Override
    public int getItemCount() {
        return dataItemList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.txt_title)
        TextView txtTitle;
        @BindView(R.id.txt_velues)
        TextView txtVelues;

        @BindView(R.id.img_top)
        ImageView imgTop;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }
}