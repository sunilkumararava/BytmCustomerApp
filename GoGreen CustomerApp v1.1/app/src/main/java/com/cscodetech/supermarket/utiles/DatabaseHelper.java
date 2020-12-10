package com.cscodetech.supermarket.utiles;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import com.cscodetech.supermarket.MyApplication;
import com.cscodetech.supermarket.ui.DetailsActivity;
import com.cscodetech.supermarket.ui.HomeActivity;

import static com.cscodetech.supermarket.ui.HomeActivity.txtCountcard;
import static com.cscodetech.supermarket.utiles.SessionManager.storeid;

public class DatabaseHelper extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "mydatabase.db";
    public static final String TABLE_NAME = "items";
    public static final String ICOL_1 = "ID";
    public static final String ICOL_2 = "PID";
    public static final String ICOL_3 = "productName";
    public static final String ICOL_4 = "productImage";
    public static final String ICOL_5 = "brandName";
    public static final String ICOL_6 = "shortDesc";
    public static final String ICOL_7 = "productPrice";
    public static final String ICOL_8 = "qty";
    public static final String ICOL_9 = "discount";
    public static final String ICOL_10 = "aid";
    public static final String ICOL_11 = "ptype";
    public static final String ICOL_12 = "storeid";
    SessionManager sessionManager;

    public DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, 1);
        sessionManager = new SessionManager(context);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("create table " + TABLE_NAME + " (ID INTEGER PRIMARY KEY AUTOINCREMENT, PID TEXT , productName TEXT ,productImage TEXT , brandName TEXT , shortDesc TEXT, productPrice TEXT , qty int, discount Double , aid TEXT , ptype TEXT , storeid TEXT )");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME);
        onCreate(db);
    }

    public boolean insertData(MyCart rModel) {

        int isV = isStore(sessionManager.getStringData(storeid));
        if (isV != 0 && isV != Integer.parseInt(sessionManager.getStringData(storeid))) {
            if (MyApplication.isActivityVisible()) {
                DetailsActivity.getInstance().bottonCardClear();
            } else {
                HomeActivity.getInstance().bottonCardClear();

            }
            return false;

        } else {
            if (getID(rModel.getAttributeId()) == -1) {
                SQLiteDatabase db = this.getWritableDatabase();
                ContentValues contentValues = new ContentValues();
                contentValues.put(ICOL_2, rModel.getPid());
                contentValues.put(ICOL_3, rModel.getProductName());
                contentValues.put(ICOL_4, rModel.getProductImage());
                contentValues.put(ICOL_5, rModel.getBrandName());
                contentValues.put(ICOL_6, rModel.getShortDesc());
                contentValues.put(ICOL_7, rModel.getProductPrice());
                contentValues.put(ICOL_8, rModel.getQty());
                contentValues.put(ICOL_9, rModel.getDiscount());
                contentValues.put(ICOL_10, rModel.getAttributeId());
                contentValues.put(ICOL_11, rModel.getProductType());
                contentValues.put(ICOL_12, sessionManager.getStringData(storeid));
                long result = db.insert(TABLE_NAME, null, contentValues);
                if (result == -1) {
                    return false;
                } else {
                    Cursor resw = getAllData();
                    txtCountcard.setText("" + resw.getCount());

                    return true;
                }
            } else {
                return updateData(rModel.getAttributeId(), rModel.getQty());
            }
        }
    }

    public int isStore(String storeid) {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor c = db.query(TABLE_NAME, new String[]{"storeid"}, "storeid =? ", new String[]{storeid}, null, null, null, null);
        if (c.moveToFirst()) { //if the row exist then return the id
            return c.getInt(c.getColumnIndex("storeid"));
        } else {
            Cursor cursor = getAllData();
            if (cursor.getCount() != 0) {
                return -1;
            }
            return cursor.getCount();
        }
    }

    private int getID(String aid) {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor c = db.query(TABLE_NAME, new String[]{"PID"}, "aid =? ", new String[]{aid}, null, null, null, null);
        if (c.moveToFirst()) //if the row exist then return the id
            return c.getInt(c.getColumnIndex("PID"));
        return -1;
    }

    public int getCard(String aid) {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor c = db.query(TABLE_NAME, new String[]{"qty"}, "aid =? ", new String[]{aid}, null, null, null, null);
        if (c.moveToFirst()) { //if the row exist then return the id
            return c.getInt(c.getColumnIndex("qty"));
        } else {
            return -1;
        }
    }

    public Cursor getAllData() {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor res = db.rawQuery("select * from " + TABLE_NAME, null);
        return res;
    }

    public boolean updateData(String aid, String qty) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(ICOL_8, qty);
        db.update(TABLE_NAME, contentValues, "aid = ? ", new String[]{aid});
        Cursor res = getAllData();
        txtCountcard.setText("" + res.getCount());
        return true;
    }

    public void deleteCard() {
        SQLiteDatabase db = this.getWritableDatabase();
        db.execSQL("delete from " + TABLE_NAME);
        txtCountcard.setText("0");
    }

    public Integer deleteRData(String aid) {
        SQLiteDatabase db = this.getWritableDatabase();
        Integer a = db.delete(TABLE_NAME, "aid = ? ", new String[]{aid});
        Cursor res = getAllData();
        txtCountcard.setText("" + res.getCount());
        return a;
    }
}