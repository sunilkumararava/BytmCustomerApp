package com.cscodetech.supermarket.ui;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.cscodetech.supermarket.R;
import com.cscodetech.supermarket.fragment.CategoryFragment;
import com.cscodetech.supermarket.fragment.HomeFragment;
import com.cscodetech.supermarket.utiles.DatabaseHelper;
import com.cscodetech.supermarket.utiles.SessionManager;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.bottomsheet.BottomSheetDialog;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;


import static com.cscodetech.supermarket.utiles.SessionManager.pincoded;
import static com.cscodetech.supermarket.utiles.SessionManager.storeid;
import static com.cscodetech.supermarket.utiles.SessionManager.storename;

public class HomeActivity extends RootActivity {

    @BindView(R.id.bottom_navigation)
    BottomNavigationView bottomNavigation;
    @BindView(R.id.container)
    FrameLayout container;
    @BindView(R.id.txt_location)
    TextView txtLocation;


    public static HomeActivity homeActivity = null;
    public static TextView txtCountcard;


    public static HomeActivity getInstance() {
        return homeActivity;
    }

    SessionManager sessionManager;
    DatabaseHelper helper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        ButterKnife.bind(this);
        sessionManager = new SessionManager(HomeActivity.this);
        helper = new DatabaseHelper(HomeActivity.this);
        homeActivity = HomeActivity.this;
        txtCountcard = findViewById(R.id.txt_countcard);

        bottomNavigation.setOnNavigationItemSelectedListener(navigationItemSelectedListener);
        if (sessionManager.getStringData(pincoded).equalsIgnoreCase("")) {
            startActivity(new Intent(HomeActivity.this, AddressActivity.class));
        } else if (sessionManager.getStringData(storeid).equalsIgnoreCase("")) {
            startActivity(new Intent(HomeActivity.this, StoreActivity.class));

        } else {
            setLocation(sessionManager.getStringData(storename));
            openFragment(new HomeFragment());
            updateItem();
        }
    }

    public void updateItem() {
        Cursor res = helper.getAllData();
        if (res.getCount() == 0) {
            txtCountcard.setText("0");
        } else {
            txtCountcard.setText("" + res.getCount());
        }
    }

    public void setLocation(String location) {

        txtLocation.setText("Welcome to " + location);

    }

    public void openFragment(Fragment fragment) {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        transaction.replace(R.id.container, fragment);
        transaction.addToBackStack(null);
        transaction.commit();
    }


    BottomNavigationView.OnNavigationItemSelectedListener navigationItemSelectedListener =
            new BottomNavigationView.OnNavigationItemSelectedListener() {
                @Override
                public boolean onNavigationItemSelected(@NonNull MenuItem item) {

                    switch (item.getItemId()) {
                        case R.id.navigation_home:
                            openFragment(new HomeFragment());
                            return true;
                        case R.id.navigation_sreach:
                            startActivity(new Intent(HomeActivity.this, SearchActivity.class));

                            return true;
                        case R.id.navigation_medicine:
                            openFragment(new CategoryFragment());
                            return true;

                        case R.id.navigation_notifications:
                            if (sessionManager.getBooleanData(SessionManager.login)) {
                                startActivity(new Intent(HomeActivity.this, NotificationActivity.class));

                            } else {
                                startActivity(new Intent(HomeActivity.this, LoginActivity.class));

                            }
                            return true;
                        case R.id.navigation_setting:
                            if (sessionManager.getBooleanData(SessionManager.login)) {
                                startActivity(new Intent(HomeActivity.this, SettingActivity.class));

                            } else {
                                startActivity(new Intent(HomeActivity.this, LoginActivity.class));

                            }
                            return true;
                        default:
                            break;
                    }
                    return false;
                }
            };

    @OnClick({R.id.rlt_cart, R.id.lvl_actionsearch, R.id.lvl_changestore})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rlt_cart:
                if (sessionManager.getBooleanData(SessionManager.login)) {
                    startActivity(new Intent(HomeActivity.this, CartActivity.class));
                } else {
                    startActivity(new Intent(HomeActivity.this, LoginActivity.class));

                }
                break;
            case R.id.lvl_actionsearch:
                startActivity(new Intent(HomeActivity.this, SearchActivity.class));
                break;
            case R.id.lvl_changestore:
                startActivity(new Intent(HomeActivity.this, StoreActivity.class));
                break;
            default:

                break;
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (AddressActivity.getInstance() != null && AddressActivity.getInstance().changeAddress) {
            AddressActivity.getInstance().changeAddress = false;
            if (sessionManager.getStringData(storeid).equalsIgnoreCase("")) {
                startActivity(new Intent(HomeActivity.this, StoreActivity.class));
            } else {
                setLocation(sessionManager.getStringData(storename));
                openFragment(new HomeFragment());
                updateItem();
            }


        } else if (StoreActivity.getInstance() != null && StoreActivity.getInstance().changeStore) {
            StoreActivity.getInstance().changeStore = false;
            setLocation(sessionManager.getStringData(storename));
            openFragment(new HomeFragment());
            updateItem();
        }
    }

    @Override
    public void onBackPressed() {

        FragmentManager fragment = getSupportFragmentManager();


        if (fragment.getBackStackEntryCount() > 1) {
            Fragment fragmentaa = getSupportFragmentManager().findFragmentById(R.id.container);
            if (fragmentaa instanceof HomeFragment && fragmentaa.isVisible()) {
                finish();
            } else {
                super.onBackPressed();
            }
        } else {
            //Nothing in the back stack, so exit
            finish();
        }
    }

    public void bottonCardClear() {
        BottomSheetDialog mBottomSheetDialog = new BottomSheetDialog(this);
        View sheetView = getLayoutInflater().inflate(R.layout.crearcard_layout, null);
        mBottomSheetDialog.setContentView(sheetView);
        TextView txtCrear = sheetView.findViewById(R.id.txt_crear);
        TextView txtNo = sheetView.findViewById(R.id.txt_no);
        mBottomSheetDialog.show();
        txtCrear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                helper.deleteCard();
                mBottomSheetDialog.cancel();
                updateItem();
            }
        });
        txtNo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                mBottomSheetDialog.cancel();
            }
        });
    }

}