.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field private static final INVALID_ROW_ID:I = -0x1

.field private static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field private static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field private static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field private static final LSO_ITEM_BG_COLOR:I = 0x6

.field private static final LSO_ITEM_GRAVITY:I = 0x7

.field private static final LSO_ITEM_HEIGHT:I = 0x4

.field private static final LSO_ITEM_ID:I = 0x2

.field private static final LSO_ITEM_IMG_PATH:I = 0x9

.field private static final LSO_ITEM_IMG_URL:I = 0xc

.field private static final LSO_ITEM_LAYER:I = 0x10

.field private static final LSO_ITEM_ORIENTATION:I = 0xd

.field private static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field private static final LSO_ITEM_PARENT_ID:I = 0x11

.field private static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field private static final LSO_ITEM_ROWID:I = 0x0

.field private static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field private static final LSO_ITEM_TEXT:I = 0x9

.field private static final LSO_ITEM_TXT_COLOR:I = 0x8

.field private static final LSO_ITEM_TXT_SIZE:I = 0xb

.field private static final LSO_ITEM_TXT_STYLE:I = 0xa

.field private static final LSO_ITEM_TYPE:I = 0x1

.field private static final LSO_ITEM_WEIGHT:I = 0x5

.field private static final LSO_ITEM_WIDTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LSOStorageProvider"

.field private static final tblColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Item_RowId"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Width"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Height"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Weight"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Bg_Color"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Gravity"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_TxtColor_or_PollingInterval"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Txt_or_ImgPath"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_TxtStyle_or_ScaleType"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_TxtSize"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Url"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Orientation"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_PackageName"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Attributes"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_Layer"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Item_ParentId"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;
    .registers 18

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v7

    const/4 v1, 0x0

    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x10

    aget-object v9, v9, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x11

    aget-object v9, v9, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v4

    if-eqz v4, :cond_39

    array-length v9, v4

    if-nez v9, :cond_3a

    :cond_39
    return-object v0

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    array-length v9, v4

    if-ge v2, v9, :cond_1b4

    xor-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_1b4

    aget v9, v4, v2

    sparse-switch v9, :sswitch_data_1b8

    packed-switch v7, :pswitch_data_1d6

    const/4 v1, 0x1

    const-string/jumbo v9, "LSOStorageProvider"

    const-string/jumbo v10, "unknown LSOItem"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :sswitch_57
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :sswitch_64
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_54

    :sswitch_75
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_54

    :sswitch_86
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_54

    :sswitch_97
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_54

    :sswitch_a8
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_54

    :sswitch_b9
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xf

    aget-object v9, v9, v10

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_54

    :pswitch_cb
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    aget v9, v4, v2

    sparse-switch v9, :sswitch_data_1e2

    goto :goto_54

    :sswitch_d4
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :sswitch_e3
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_54

    :sswitch_f6
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v9, v9, v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_54

    :sswitch_109
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xb

    aget-object v9, v9, v10

    invoke-virtual {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_54

    :pswitch_11c
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    aget v9, v4, v2

    sparse-switch v9, :sswitch_data_1f4

    goto/16 :goto_54

    :sswitch_126
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :sswitch_135
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v9, v9, v10

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_54

    :sswitch_148
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xc

    aget-object v9, v9, v10

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    invoke-virtual {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_54

    :pswitch_168
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    aget v9, v4, v2

    sparse-switch v9, :sswitch_data_202

    goto/16 :goto_54

    :sswitch_172
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xd

    aget-object v10, v9, v10

    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v9

    sget-object v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v9, v11, :cond_199

    const/4 v9, 0x0

    :goto_181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_54

    :sswitch_18a
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_199
    const/4 v9, 0x1

    goto :goto_181

    :pswitch_19b
    move-object v8, p1

    check-cast v8, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    aget v9, v4, v2

    packed-switch v9, :pswitch_data_20c

    goto/16 :goto_54

    :pswitch_1a5
    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v10, 0xe

    aget-object v9, v9, v10

    invoke-virtual {v8}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_1b4
    if-eqz v1, :cond_1b7

    const/4 v0, 0x0

    :cond_1b7
    return-object v0

    :sswitch_data_1b8
    .sparse-switch
        0x1 -> :sswitch_57
        0x2 -> :sswitch_64
        0x4 -> :sswitch_75
        0x8 -> :sswitch_86
        0x10 -> :sswitch_97
        0x20 -> :sswitch_a8
        0x40 -> :sswitch_b9
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x2
        :pswitch_cb
        :pswitch_11c
        :pswitch_168
        :pswitch_19b
    .end packed-switch

    :sswitch_data_1e2
    .sparse-switch
        0x80 -> :sswitch_d4
        0x100 -> :sswitch_e3
        0x200 -> :sswitch_109
        0x400 -> :sswitch_f6
    .end sparse-switch

    :sswitch_data_1f4
    .sparse-switch
        0x80 -> :sswitch_126
        0x100 -> :sswitch_148
        0x200 -> :sswitch_135
    .end sparse-switch

    :sswitch_data_202
    .sparse-switch
        0x80 -> :sswitch_172
        0x100 -> :sswitch_18a
    .end sparse-switch

    :pswitch_data_20c
    .packed-switch 0x80
        :pswitch_1a5
    .end packed-switch
.end method

.method private deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 8

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_2f

    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    :cond_2f
    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private getAdminUid(Ljava/lang/String;)I
    .registers 6

    const-string/jumbo v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName"

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - Configured admin UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9

    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Insert record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5f

    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": Failed to insert record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5f
    return-wide v2
.end method

.method private loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V
    .registers 16

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v8, 0x9

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0xd

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_19
    if-eqz v7, :cond_20

    sget-object v8, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v8}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    :cond_20
    const-string/jumbo v8, "LSOStorageProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadContainerData -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "Item_ParentId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "LOCKSCREEN_OVERLAY"

    sget-object v9, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v4, v11}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_5d

    return-void

    :cond_5d
    :try_start_5d
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_60
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_60} :catch_83
    .catchall {:try_start_5d .. :try_end_60} :catchall_ae

    move-result v8

    if-nez v8, :cond_69

    if-eqz v0, :cond_68

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_68
    return-void

    :cond_69
    const/4 v6, 0x0

    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-byte v6, v8

    invoke-static {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_82
    .catch Landroid/database/SQLException; {:try_start_6a .. :try_end_82} :catch_83
    .catchall {:try_start_6a .. :try_end_82} :catchall_ae

    goto :goto_6a

    :catch_83
    move-exception v5

    :try_start_84
    const-string/jumbo v8, "LSOStorageProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception occurred accessing Enterprise db "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_ae

    if-eqz v0, :cond_a7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    if-eqz v0, :cond_a7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a7

    :catchall_ae
    move-exception v8

    if-eqz v0, :cond_b4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b4
    throw v8
.end method

.method private loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V
    .registers 9

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    :cond_1d
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0xc

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    int-to-long v4, v1

    invoke-virtual {p1, v0, v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    :cond_35
    const-string/jumbo v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LoadImageData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .registers 10

    const/4 v6, -0x1

    const/16 v5, -0x63

    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    :cond_d
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v5, :cond_17

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    :cond_17
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v5, :cond_21

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    :cond_21
    const/4 v4, 0x5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_2e

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    :cond_2e
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v6, :cond_38

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    :cond_38
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5e

    const-string/jumbo v4, "LSOStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LoadItemData -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5e
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v6, :cond_68

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    :cond_68
    const/16 v4, 0xf

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    :cond_77
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_98

    :goto_7e
    return-void

    :pswitch_7f
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V

    goto :goto_7e

    :pswitch_85
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_7e

    :pswitch_8b
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_7e

    :pswitch_91
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_7e

    nop

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_85
        :pswitch_8b
        :pswitch_91
    .end packed-switch
.end method

.method private loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V
    .registers 9

    const/4 v4, -0x1

    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    :cond_12
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v4, :cond_1d

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    :cond_1d
    const/16 v3, 0xa

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v4, :cond_28

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    :cond_28
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_36

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    :cond_36
    const-string/jumbo v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LoadTextData -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V
    .registers 7

    const/16 v1, 0xe

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadWidgetData -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .registers 16

    const/4 v10, 0x0

    if-nez p1, :cond_4

    return v10

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_14

    const-string/jumbo v5, "LSOStorageProvider"

    const-string/jumbo v8, "Cannot construct content values"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_14
    const-string/jumbo v5, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v5, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_22

    return v10

    :cond_22
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2b

    const/4 v5, 0x1

    return v5

    :cond_2b
    const/4 v0, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v5

    if-ge v1, v5, :cond_45

    if-eqz v4, :cond_45

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    invoke-direct {p0, v5, p2, v6, v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_45
    if-nez v4, :cond_6c

    const-string/jumbo v5, "LSOStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to store LSOItemData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " with ParendId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    return v4
.end method

.method private updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    const-string/jumbo v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Insert/Update record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Number of rows updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_65

    const-string/jumbo v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Failed to insert record - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_65
    return v1
.end method

.method private wipeLayerData(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_29

    const-string/jumbo v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->remove(Ljava/lang/String;)Z

    :goto_a
    const-string/jumbo v2, "LSOStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_29
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "Item_Layer"

    aput-object v2, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_a
.end method


# virtual methods
.method public getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v5, "accountObject"

    aput-object v5, v3, v8

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "policyName"

    const-string/jumbo v6, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ADMIN_REF"

    invoke-virtual {p0, v5, v3, v4, v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_22

    return-object v7

    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    :cond_33
    return-object v2
.end method

.method public getCount(Ljava/lang/String;)I
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_23

    return v5

    :cond_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string/jumbo v3, "LSOStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 12

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "Item_ParentId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "Item_Layer"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1d
    const-string/jumbo v6, "LOCKSCREEN_OVERLAY"

    sget-object v7, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v3, v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_38

    const-string/jumbo v6, "LSOStorageProvider"

    const-string/jumbo v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_32} :catch_84
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_74
    .catchall {:try_start_1d .. :try_end_32} :catchall_a9

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object v9

    :cond_38
    :try_start_38
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4d

    const-string/jumbo v6, "LSOStorageProvider"

    const-string/jumbo v7, "No record found in LOCKSCREEN_OVERLAY"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_47} :catch_84
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_74
    .catchall {:try_start_38 .. :try_end_47} :catchall_a9

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-object v9

    :cond_4d
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-byte v5, v6

    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    if-nez v2, :cond_6b

    const-string/jumbo v6, "LSOStorageProvider"

    const-string/jumbo v7, "Invalid Item type"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_4d .. :try_end_65} :catch_84
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_65} :catch_74
    .catchall {:try_start_4d .. :try_end_65} :catchall_a9

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    return-object v9

    :cond_6b
    :try_start_6b
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_6b .. :try_end_6e} :catch_84
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_74
    .catchall {:try_start_6b .. :try_end_6e} :catchall_a9

    if-eqz v0, :cond_73

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_73
    :goto_73
    return-object v2

    :catch_74
    move-exception v1

    :try_start_75
    const-string/jumbo v6, "LSOStorageProvider"

    const-string/jumbo v7, "getOverlay() falied "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_a9

    if-eqz v0, :cond_73

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_73

    :catch_84
    move-exception v4

    :try_start_85
    const-string/jumbo v6, "LSOStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception occurred accessing Enterprise db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_a9

    if-eqz v0, :cond_73

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_73

    :catchall_a9
    move-exception v6

    if-eqz v0, :cond_af

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_af
    throw v6
.end method

.method public getOverlayAdminUid()I
    .registers 2

    const-string/jumbo v0, "LOCKSCREEN_OVERLAY"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWallpaperAdminUid()I
    .registers 2

    const-string/jumbo v0, "LOCKSCREEN_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public resetOverlayData(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "LOCKSCREEN_OVERLAY"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    :cond_1b
    const-string/jumbo v1, "LSOStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetWallpaperData()V
    .registers 4

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "LOCKSCREEN_WALLPAPER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    const-string/jumbo v1, "LSOStorageProvider"

    const-string/jumbo v2, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_9

    cmp-long v3, p1, v8

    if-nez v3, :cond_12

    :cond_9
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string/jumbo v4, "Parameter cannot be null"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v1

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_24
    :goto_24
    return v2

    :cond_25
    int-to-long v4, v1

    cmp-long v3, v4, p1

    if-eqz v3, :cond_24

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "policyName"

    const-string/jumbo v4, "LOCKSCREEN_OVERLAY"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_4e

    const-string/jumbo v3, "accountObject"

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4e
    const-string/jumbo v3, "ADMIN_REF"

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v3, v8, v4

    if-eqz v3, :cond_60

    const/4 v2, 0x1

    :goto_5a
    if-nez v2, :cond_24

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_24

    :cond_60
    const/4 v2, 0x0

    goto :goto_5a
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    if-eqz p3, :cond_8

    cmp-long v2, p1, v4

    if-nez v2, :cond_11

    :cond_8
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "Parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "policyName"

    const-string/jumbo v3, "LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "ADMIN_REF"

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3f

    const/4 v1, 0x1

    :goto_39
    if-nez v1, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    :cond_3e
    return v1

    :cond_3f
    const/4 v1, 0x0

    goto :goto_39
.end method

.method public updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_29

    const-string/jumbo v4, "accountObject"

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_13
    const-string/jumbo v3, "policyName=?"

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "LOCKSCREEN_OVERLAY"

    aput-object v4, v2, v6

    const-string/jumbo v4, "ADMIN_REF"

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_32

    const/4 v1, 0x1

    :goto_28
    return v1

    :cond_29
    const-string/jumbo v5, "accountObject"

    check-cast v4, [B

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_13

    :cond_32
    const/4 v1, 0x0

    goto :goto_28
.end method
