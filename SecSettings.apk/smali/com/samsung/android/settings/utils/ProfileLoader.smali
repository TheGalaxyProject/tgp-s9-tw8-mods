.class public Lcom/samsung/android/settings/utils/ProfileLoader;
.super Ljava/lang/Object;
.source "ProfileLoader.java"


# static fields
.field private static PROJECTION_DATA:[Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data14"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "data15"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/utils/ProfileLoader;
    .registers 2

    const-class v1, Lcom/samsung/android/settings/utils/ProfileLoader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;

    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/settings/utils/ProfileLoader;

    invoke-direct {v0}, Lcom/samsung/android/settings/utils/ProfileLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_16

    array-length v2, v1

    if-nez v2, :cond_16

    return v4

    :cond_16
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public loadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/utils/ProfileLoader;->PROJECTION_DATA:[Ljava/lang/String;

    const-string/jumbo v3, "account_type_and_data_set =? AND mimetype =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.sec.contact.phone"

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_35} :catch_9e
    .catchall {:try_start_2 .. :try_end_35} :catchall_b8

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4b

    :cond_3a
    if-eqz v7, :cond_3f

    :try_start_3c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_48
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_43

    :cond_3f
    move-object v0, v11

    :goto_40
    if-eqz v0, :cond_4a

    :try_start_42
    throw v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_43} :catch_43

    :catch_43
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-object v11

    :catch_48
    move-exception v0

    goto :goto_40

    :cond_4a
    return-object v11

    :cond_4b
    const/4 v10, 0x0

    const/4 v0, 0x2

    :try_start_4d
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    if-nez v8, :cond_54

    const/4 v10, 0x0

    :cond_54
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v0, "Settings/ProfileLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbNail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/InputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_92

    const-string/jumbo v0, "Settings/ProfileLoader"

    const-string/jumbo v1, "loadBitmap failed to get mediaInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_86} :catch_9e
    .catchall {:try_start_4d .. :try_end_86} :catchall_b8

    if-eqz v7, :cond_8b

    :try_start_88
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_43

    :cond_8b
    move-object v0, v11

    :goto_8c
    if-eqz v0, :cond_91

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_43

    :catch_8f
    move-exception v0

    goto :goto_8c

    :cond_91
    return-object v11

    :cond_92
    if-eqz v7, :cond_97

    :try_start_94
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_43

    :cond_97
    move-object v0, v11

    :goto_98
    if-eqz v0, :cond_9d

    :try_start_9a
    throw v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9b} :catch_43

    :catch_9b
    move-exception v0

    goto :goto_98

    :cond_9d
    return-object v6

    :catch_9e
    move-exception v0

    :try_start_9f
    throw v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_a4
    if-eqz v7, :cond_a9

    :try_start_a6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_43

    :cond_a9
    :goto_a9
    if-eqz v1, :cond_b7

    :try_start_ab
    throw v1

    :catch_ac
    move-exception v2

    if-nez v1, :cond_b1

    move-object v1, v2

    goto :goto_a9

    :cond_b1
    if-eq v1, v2, :cond_a9

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a9

    :cond_b7
    throw v0
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b8} :catch_43

    :catchall_b8
    move-exception v0

    move-object v1, v11

    goto :goto_a4
.end method

.method public makeAvatarDrawable(Landroid/content/Context;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_1e

    const-string/jumbo v2, "Settings/ProfileLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip update:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_1e
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/utils/ProfileLoader;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    return-object v5

    :cond_25
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/utils/ProfileLoader;->loadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_35

    const-string/jumbo v2, "Settings/ProfileLoader"

    const-string/jumbo v3, "skip update:can not get bitmap:"

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_44

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    return-object v1

    :cond_44
    return-object v5
.end method

.method public openProfile(Landroid/content/Context;)V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_5
    const-string/jumbo v2, "com.samsung.android.mobileservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_14
.end method
