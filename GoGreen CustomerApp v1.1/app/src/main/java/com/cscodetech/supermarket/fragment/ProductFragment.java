package com.cscodetech.supermarket.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.cscodetech.supermarket.R;
import com.cscodetech.supermarket.adepter.ProductAdapter;
import com.cscodetech.supermarket.model.Medicine;
import com.cscodetech.supermarket.ui.DetailsActivity;
import com.cscodetech.supermarket.utiles.CustPrograssbar;

import butterknife.BindView;
import butterknife.ButterKnife;


public class ProductFragment extends Fragment implements ProductAdapter.RecyclerTouchListener {

    @BindView(R.id.recycler_product)
    RecyclerView recyclerProduct;
    @BindView(R.id.txt_notfount)
    TextView txtNotfount;
    @BindView(R.id.lvl_notfound)
    LinearLayout lvlNotfound;
    private int mPosition;
    ProductAdapter productAdapter;
    CustPrograssbar custPrograssbar;

    public ProductFragment() {
        // Required empty public constructor
    }

    public static ProductFragment newInstance(int param1, String param2) {
        ProductFragment fragment = new ProductFragment();
        Bundle args = new Bundle();
        args.putInt("position", param1);
        args.putString("cid", param2);
        fragment.setArguments(args);
        return fragment;
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mPosition = getArguments().getInt("position");
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_product, container, false);
        ButterKnife.bind(this, view);
        custPrograssbar=new CustPrograssbar();
        dataset();
        return view;
    }
    private void dataset() {
        recyclerProduct.setLayoutManager(new GridLayoutManager(getActivity(), 1));
        recyclerProduct.setItemAnimator(new DefaultItemAnimator());
        if (!SubCategoryFragment.getInstance().categoryProducts.get(mPosition).getProductlist().isEmpty()) {
            lvlNotfound.setVisibility(View.GONE);
        } else {
            lvlNotfound.setVisibility(View.VISIBLE);
        }
        productAdapter = new ProductAdapter(getActivity(), SubCategoryFragment.getInstance().categoryProducts.get(mPosition).getProductlist(), this);
        recyclerProduct.setAdapter(productAdapter);
    }
    @Override
    public void onClickProductItem(String titel, Medicine medicine) {
        startActivity(new Intent(getActivity(), DetailsActivity.class).putExtra("MyClass", medicine).putParcelableArrayListExtra("PriceList", medicine.getProductInfo()).putStringArrayListExtra("ImageList", medicine.getProductImage()));
    }
    @Override
    public void onResume() {
        super.onResume();

        if (recyclerProduct != null) {
            dataset();
        }
    }
}