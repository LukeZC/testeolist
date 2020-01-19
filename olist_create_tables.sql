CREATE TABLE olist_customers_dataset
(
    customer_id varchar(50) not null,
    customer_unique_id varchar(50) not null,
	customer_zip_code_prefix int not null,
    customer_city varchar(50) not null,
    customer_state char(2) not null
);

CREATE TABLE olist_geolocation_dataset
(
    geolocation_zip_code_prefix int not null,
    geolocation_lat float not null,
    geolocation_lng float not null,
    geolocation_city varchar(50) not null,
    geolocation_state char(2) not null
);


CREATE TABLE olist_order_items_dataset
(
    order_id varchar(50) not null,
    order_item_id int not null,
    product_id varchar(50) not null,
    seller_id varchar(50) not null,
    shipping_limit_date datetime not null,
    price float not null,
    freight_value float not null
);

CREATE TABLE olist_order_payments_dataset
(
    order_id varchar(50) not null,
	payment_sequential int not null,
    payment_type varchar(20) not null,
    payment_installments int not null,
    payment_value float not null
);

CREATE TABLE olist_order_reviews_dataset
(
    review_id varchar(50) not null,
    order_id varchar(50) not null,
    review_score int not null,
    review_comment_title varchar(100),
    review_comment_message varchar(1000),
    review_creation_date  date not null,
    review_answer_timestamp timestamp not null
);

CREATE TABLE olist_orders_dataset
(
    order_id varchar(50) not null,
    customer_id varchar(50) not null,
    order_status varchar(50) not null,
    order_purchase_timestamp datetime,
    order_approved_at datetime,
    order_delivered_carrier_date datetime,
    order_delivered_customer_date datetime,
    order_estimated_delivery_date datetime
)

CREATE TABLE olist_products_dataset
(
    product_id varchar(50) not null,
    product_category_name varchar(50),
    product_name_lenght int,
    product_description_lenght int,
    product_photos_qty int,
    product_weight_g int,
    product_length_cm int,
    product_height_cm int,
    product_width_cm int
);

CREATE TABLE olist_sellers_dataset
(
    seller_id varchar(50) not null,
    seller_zip_code_prefix int not null,
    seller_city varchar(50) not null,
    seller_state char(2) not null
);

CREATE TABLE product_category_name_translation
(
    product_category_name varchar(50) not null,
    product_category_name_english varchar(50) not null,
);