package com.supermarket.store.model;

import android.os.Parcel;
import android.os.Parcelable;

import com.google.gson.annotations.SerializedName;

import java.util.ArrayList;
import java.util.List;

public class ProductDataItem implements Parcelable {

	@SerializedName("product_image")
	private List<String> productImage;

	@SerializedName("product_info")
	private ArrayList<ProductInfoItem> productInfo;

	@SerializedName("id")
	private String id;

	@SerializedName("short_desc")
	private String shortDesc;

	@SerializedName("product_name")
	private String productName;

	protected ProductDataItem(Parcel in) {
		productImage = in.createStringArrayList();
		id = in.readString();
		shortDesc = in.readString();
		productName = in.readString();
	}

	public static final Creator<ProductDataItem> CREATOR = new Creator<ProductDataItem>() {
		@Override
		public ProductDataItem createFromParcel(Parcel in) {
			return new ProductDataItem(in);
		}

		@Override
		public ProductDataItem[] newArray(int size) {
			return new ProductDataItem[size];
		}
	};

	public void setProductImage(List<String> productImage){
		this.productImage = productImage;
	}

	public List<String> getProductImage(){
		return productImage;
	}

	public void setProductInfo(ArrayList<ProductInfoItem> productInfo){
		this.productInfo = productInfo;
	}

	public ArrayList<ProductInfoItem> getProductInfo(){
		return productInfo;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getId(){
		return id;
	}

	public void setShortDesc(String shortDesc){
		this.shortDesc = shortDesc;
	}

	public String getShortDesc(){
		return shortDesc;
	}

	public void setProductName(String productName){
		this.productName = productName;
	}

	public String getProductName(){
		return productName;
	}

	@Override
	public int describeContents() {
		return 0;
	}

	@Override
	public void writeToParcel(Parcel parcel, int i) {
		parcel.writeStringList(productImage);
		parcel.writeString(id);
		parcel.writeString(shortDesc);
		parcel.writeString(productName);
	}
}