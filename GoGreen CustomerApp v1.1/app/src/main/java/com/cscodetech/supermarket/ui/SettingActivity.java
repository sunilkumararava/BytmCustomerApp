package com.cscodetech.supermarket.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.cscodetech.supermarket.R;
import com.cscodetech.supermarket.model.User;
import com.cscodetech.supermarket.utiles.CustPrograssbar;
import com.cscodetech.supermarket.utiles.SessionManager;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class SettingActivity extends RootActivity {
    SessionManager sessionManager;
    User user;
    @BindView(R.id.txtfirstl)
    TextView txtfirstl;
    @BindView(R.id.txt_name)
    TextView txtName;
    @BindView(R.id.txt_mob)
    TextView txtMob;
    @BindView(R.id.txt_copyr)
    TextView txtCopyr;

    @BindView(R.id.lvl_order)
    LinearLayout lvlOrder;

    @BindView(R.id.lvl_address)
    LinearLayout lvlAddress;

    @BindView(R.id.lvl_edit)
    LinearLayout lvlEdit;



    CustPrograssbar custPrograssbar;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_setting);
        ButterKnife.bind(this);
        custPrograssbar=new CustPrograssbar();
        sessionManager = new SessionManager(SettingActivity.this);
        user = sessionManager.getUserDetails("");
        char first = user.getFname().charAt(0);
        txtfirstl.setText("" + first);
        txtName.setText("" + user.getFname());
        txtMob.setText("" + user.getMobile());
        String sourceString = "Design Develop by <b>" + "CSCODETECH" + "</b> ";
        txtCopyr.setText(Html.fromHtml(sourceString));

        if(!sessionManager.getBooleanData(SessionManager.login)){
            lvlOrder.setVisibility(View.GONE);
            lvlAddress.setVisibility(View.GONE);
            lvlEdit.setVisibility(View.GONE);
        }

    }

    @OnClick({R.id.lvl_order,  R.id.lvl_address, R.id.lvl_about, R.id.lvl_contect, R.id.lvl_privacy, R.id.lvl_teams, R.id.lvl_logot, R.id.lvl_edit})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.lvl_order:
                startActivity(new Intent(SettingActivity.this, OrderActivity.class));
                break;

            case R.id.lvl_address:
                startActivity(new Intent(SettingActivity.this, AddressActivity.class));
                break;
            case R.id.lvl_about:
                startActivity(new Intent(SettingActivity.this, AboutActivity.class));
                break;
            case R.id.lvl_contect:
                startActivity(new Intent(SettingActivity.this, ContactActivity.class));

                break;
            case R.id.lvl_privacy:
                startActivity(new Intent(SettingActivity.this, PrivacyPolicyActivity.class));

                break;
            case R.id.lvl_teams:
                startActivity(new Intent(SettingActivity.this, TramandconditionActivity.class));
                break;
            case R.id.lvl_logot:
                sessionManager.logoutUser();
                Intent intent = new Intent(SettingActivity.this, LoginActivity.class);
                intent.setFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT | Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NO_HISTORY);
                startActivity(intent);
                break;
            case R.id.lvl_edit:
                startActivity(new Intent(SettingActivity.this, EditProfileActivity.class));
                break;
            default:
                break;
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (sessionManager != null) {
            user = sessionManager.getUserDetails("");
            char first = user.getFname().charAt(0);
            txtfirstl.setText("" + first);
            txtName.setText("" + user.getFname());
            txtMob.setText("" + user.getMobile());
        }
    }
}