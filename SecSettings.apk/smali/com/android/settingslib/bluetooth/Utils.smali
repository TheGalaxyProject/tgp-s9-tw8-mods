.class public Lcom/android/settingslib/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/Utils$ErrorListener;,
        Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;
    }
.end annotation


# static fields
.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field public static final DEBUG:Z

.field static checksum:Ljava/util/zip/Checksum;

.field private static mQuickPannelOn:Z

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    const-string/jumbo v0, "0123456789abcdef"

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, p0

    :goto_11
    if-ge v3, v4, :cond_33

    aget-byte v1, p0, v3

    const-string/jumbo v5, "0123456789abcdef"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0123456789abcdef"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 16

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    :try_start_e
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settingslib/R$color;->bt_device_icon_background_tint_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v8

    div-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v10, v12

    int-to-float v11, v8

    div-float/2addr v11, v12

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_71

    if-eqz p2, :cond_71

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_71} :catch_85
    .catchall {:try_start_e .. :try_end_71} :catchall_94

    :cond_71
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_76
    if-eqz v7, :cond_7b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7b
    :goto_7b
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9

    :catch_85
    move-exception v1

    :try_start_86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_94

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8e
    if-eqz v7, :cond_7b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7b

    :catchall_94
    move-exception v9

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9a
    if-eqz v7, :cond_9f

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9f
    throw v9
.end method

.method public static cutNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "[^\\d]"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .registers 2

    packed-switch p0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_5
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v0

    :pswitch_8
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return v0

    :pswitch_b
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return v0

    :pswitch_e
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 17

    const/4 v11, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_78

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "photo_uri"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_78

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "photo_uri"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_78

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    sget v2, Lcom/android/settingslib/R$dimen;->list_app_icon_size:I

    invoke-static {p0, v2, v13}, Lcom/android/settingslib/bluetooth/Utils;->cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_7f
    .catchall {:try_start_2 .. :try_end_67} :catchall_93

    move-result-object v2

    if-eqz v11, :cond_6d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6d
    if-eqz v8, :cond_72

    :try_start_6f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    :cond_72
    :goto_72
    return-object v2

    :catch_73
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    :cond_78
    if-eqz v11, :cond_7d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7d
    :goto_7d
    const/4 v2, 0x0

    return-object v2

    :catch_7f
    move-exception v10

    :try_start_80
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_93

    if-eqz v11, :cond_88

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_88
    if-eqz v8, :cond_7d

    :try_start_8a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_7d

    :catch_8e
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catchall_93
    move-exception v2

    if-eqz v11, :cond_99

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_99
    if-eqz v8, :cond_9e

    :try_start_9b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    :cond_9e
    :goto_9e
    throw v2

    :catch_9f
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v4, "00000000"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "0000"

    return-object v4

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    array-length v5, v0

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v5}, Ljava/util/zip/Checksum;->update([BII)V

    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/settingslib/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v4}, Ljava/util/zip/Checksum;->reset()V

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/Utils;->longToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getParsePhoneNumber(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactHash()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getContactCrc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/Utils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileIndexResourceForSALogging(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_unknown:I

    return v0

    :cond_b
    const-string/jumbo v0, "HID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_hid:I

    return v0

    :cond_17
    const-string/jumbo v0, "BLEAUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_ble_audio:I

    return v0

    :cond_23
    const-string/jumbo v0, "MAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_map:I

    return v0

    :cond_2f
    const-string/jumbo v0, "PBAP Server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_pbap:I

    return v0

    :cond_3b
    const-string/jumbo v0, "SAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_sap:I

    return v0

    :cond_47
    const-string/jumbo v0, "A2DP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_a2dp:I

    return v0

    :cond_53
    const-string/jumbo v0, "PANNAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_pan_nap:I

    return v0

    :cond_5f
    const-string/jumbo v0, "PANU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_pan_user:I

    return v0

    :cond_6b
    const-string/jumbo v0, "HEADSET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_hfp:I

    return v0

    :cond_77
    sget v0, Lcom/android/settingslib/R$string;->detail_bluetooth_bcpt_unknown:I

    return v0
.end method

.method public static getQuickPannelOn()Z
    .registers 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->mQuickPannelOn:Z

    return v0
.end method

.method public static getRestoredDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Ljava/util/List;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v7, "bond_state== 1"

    const-string/jumbo v10, "address"

    const-string/jumbo v28, "name"

    const-string/jumbo v15, "cod"

    const-string/jumbo v12, "bond_state"

    const-string/jumbo v11, "appearance"

    const-string/jumbo v27, "manufacturerdata"

    const-string/jumbo v31, "timestamp"

    const-string/jumbo v26, "linktype"

    const-string/jumbo v32, "uuids"

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v13, 0x0

    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " DESC"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_66

    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    const-string/jumbo v6, "getRestoredDevices() :: query return null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_56} :catch_14c
    .catchall {:try_start_2b .. :try_end_56} :catchall_177

    const/4 v4, 0x0

    if-eqz v13, :cond_65

    const-string/jumbo v6, "Settingslib_BluetoothUtils"

    const-string/jumbo v8, "getRestoredDevices :: will be cursor close"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_65
    return-object v4

    :cond_66
    :try_start_66
    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getRestoredDevices() :: cursor count: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", Columns : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    :goto_c4
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_168

    new-instance v29, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setName(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setCod(I)V

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setBondState(I)V

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setAppearance(I)V

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/Utils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setManufacturerData([B)V

    move/from16 v0, v24

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setTimeStamp(J)V

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setLinkType(I)V

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->setUuids(Ljava/lang/String;)V

    new-instance v14, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v29

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_14a
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_14a} :catch_14c
    .catchall {:try_start_66 .. :try_end_14a} :catchall_177

    goto/16 :goto_c4

    :catch_14c
    move-exception v16

    :try_start_14d
    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    const-string/jumbo v6, "getRestoredDevices :: Occurs IllegalStateException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_159
    .catchall {:try_start_14d .. :try_end_159} :catchall_177

    if-eqz v13, :cond_167

    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    const-string/jumbo v6, "getRestoredDevices :: will be cursor close"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_167
    :goto_167
    return-object v30

    :cond_168
    if-eqz v13, :cond_167

    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    const-string/jumbo v6, "getRestoredDevices :: will be cursor close"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_167

    :catchall_177
    move-exception v4

    if-eqz v13, :cond_186

    const-string/jumbo v6, "Settingslib_BluetoothUtils"

    const-string/jumbo v8, "getRestoredDevices :: will be cursor close"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_186
    throw v4
.end method

.method public static getStringToken(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez p1, :cond_c

    :cond_b
    return-object v4

    :cond_c
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    return-object v2
.end method

.method public static isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    const-string/jumbo v2, "(?i).*BMW.*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "(?i).*A0:56:B2.*|(?i).*B8:24:10.*|(?i).*9C:DF:03.*|(?i).*00:19:C0.*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_1e
    const-string/jumbo v2, "(?i)MINI[0-9].*"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    const/4 v2, 0x1

    return v2

    :cond_29
    const/4 v2, 0x0

    return v2
.end method

.method public static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_28
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-nez v0, :cond_2f

    return v3

    :cond_2f
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1

    :cond_34
    return v3
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_3d

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v3, 0x1

    :goto_d
    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageExists :: target package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", find = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_33
    :try_start_33
    const-string/jumbo v4, "Settingslib_BluetoothUtils"

    const-string/jumbo v5, "isPackageExists :: appInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_d

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static longToString(J)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x7

    :goto_9
    if-ltz v0, :cond_2a

    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeParcelUuids([Ljava/lang/String;)[Landroid/os/ParcelUuid;
    .registers 4

    array-length v2, p0

    new-array v1, v2, [Landroid/os/ParcelUuid;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public static retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_35

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_3b
    .catchall {:try_start_2 .. :try_end_34} :catchall_45

    move-result-object v6

    :cond_35
    if-eqz v8, :cond_3a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3a
    :goto_3a
    return-object v6

    :catch_3b
    move-exception v7

    :try_start_3c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_45

    if-eqz v8, :cond_3a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3a

    :catchall_45
    move-exception v2

    if-eqz v8, :cond_4b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v2
.end method

.method public static retrieveDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settingslib/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data12 LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_d7

    :goto_48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settingslib/bluetooth/Utils;->cutNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getDataCheckString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : true  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", find contact name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    goto :goto_48

    :cond_95
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " hash retrieveDB :: CHECK  : false  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_ba} :catch_bb
    .catchall {:try_start_1d .. :try_end_ba} :catchall_e1

    goto :goto_48

    :catch_bb
    move-exception v10

    :try_start_bc
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_e1

    if-eqz v6, :cond_c4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c4
    :goto_c4
    return-object v11

    :cond_c5
    :try_start_c5
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: end to cursor moveToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d1} :catch_bb
    .catchall {:try_start_c5 .. :try_end_d1} :catchall_e1

    :goto_d1
    if-eqz v6, :cond_c4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_c4

    :cond_d7
    :try_start_d7
    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    const-string/jumbo v1, " hash retrieveDB :: CHECK :false - cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e0} :catch_bb
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_e1

    goto :goto_d1

    :catchall_e1
    move-exception v0

    if-eqz v6, :cond_e7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e7
    throw v0
.end method

.method public static sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/Utils;->sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.salogging.intent.action.BLUETOOTH_SA_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "screenId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "eventId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "detail"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/Utils$ErrorListener;)V
    .registers 1

    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-void
.end method

.method public static setQuickPannelOn(Z)V
    .registers 4

    const-string/jumbo v0, "Settingslib_BluetoothUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuickPannelOn :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/settingslib/bluetooth/Utils;->mQuickPannelOn:Z

    return-void
.end method

.method public static setSemErrorListener(Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;)V
    .registers 1

    sput-object p0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method static showHIDConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showHIDConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method static showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/settingslib/bluetooth/Utils;->sSemErrorListener:Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;->showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_9
    return-void
.end method

.method public static stringToByte(Ljava/lang/String;)[B
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return-object v3

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2c
    return-object v1
.end method

.method public static updateDeviceName(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4a

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    const-string/jumbo v2, "Settingslib_BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void
.end method
