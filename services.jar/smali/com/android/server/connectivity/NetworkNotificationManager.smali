.class public Lcom/android/server/connectivity/NetworkNotificationManager;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsHunNotification:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationTypeMap:Landroid/util/SparseIntArray;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateNotification:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mUpdateNotification:Z

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private static getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method private static getIcon(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    const v0, 0x108090c

    :goto_6
    return v0

    :cond_7
    const v0, 0x1080905

    goto :goto_6
.end method

.method private static getTransportName(I)Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :try_start_b
    aget-object v3, v1, p0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_d} :catch_e

    return-object v3

    :catch_e
    move-exception v0

    const v3, 0x10405d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static nameOf(I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const-string/jumbo v1, "UNKNOWN"

    goto :goto_a
.end method

.method static tagFor(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "ConnectivityNotification:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNotification(I)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_c

    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "clearing notification tag=%s event=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2c
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v0, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_33} :catch_39

    :goto_33
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void

    :catch_39
    move-exception v1

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to clear notification tag=%s event=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public setProvNotificationVisible(ZILjava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_18

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object v0, p0

    move v1, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto :goto_17
.end method

.method public showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 36

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->tagFor(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    const-string/jumbo v24, "ro.radio.noril"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz p3, :cond_30

    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v24, v0

    const/16 v25, 0xc

    invoke-virtual/range {v24 .. v25}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v24

    if-nez v24, :cond_33

    return-void

    :cond_30
    const/16 v22, 0x0

    const/4 v11, 0x0

    :cond_33
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "showNotification tag=%s event=%s transport=%s extraInfo=%s highPrioriy=%s"

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v19, v26, v27

    invoke-static {v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->nameOf(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    aput-object v27, v26, v28

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    aput-object v27, v26, v28

    const/16 v27, 0x3

    aput-object v11, v26, v27

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const/16 v28, 0x4

    aput-object v27, v26, v28

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/NetworkNotificationManager;->getIcon(I)I

    move-result v13

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_248

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_248

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x1040b61

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v24, 0x1040b62

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_a9
    if-eqz p6, :cond_3b3

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    :goto_ad
    const/4 v14, 0x0

    if-nez v23, :cond_3b7

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3b7

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Captive portal Notification: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", HUN: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mUpdateNotification:Z

    move/from16 v24, v0

    if-nez v24, :cond_13a

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_13a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1ef

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.netmon.dismissHunNotification"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v24, Landroid/app/Notification$Action$Builder;

    const v25, 0x1040b6b

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v24, "android.net.netmon.signinHunNotification"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v24, Landroid/app/Notification$Action$Builder;

    const v25, 0x1040b6c

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v17

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1ef
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v14, Landroid/app/Notification;->when:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v24, v0

    if-nez v24, :cond_209

    const/16 v24, 0x2

    move/from16 v0, v24

    iput v0, v14, Landroid/app/Notification;->flags:I

    :cond_209
    :goto_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationTypeMap:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    :try_start_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v10, v14, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_227
    .catch Ljava/lang/NullPointerException; {:try_start_216 .. :try_end_227} :catch_463

    :goto_227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v24, v0

    if-eqz v24, :cond_237

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    :cond_237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mUpdateNotification:Z

    move/from16 v24, v0

    if-eqz v24, :cond_247

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/NetworkNotificationManager;->mUpdateNotification:Z

    :cond_247
    return-void

    :cond_248
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_284

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_284

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x1040b61

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v24, 0x1040b62

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a9

    :cond_284
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_33a

    packed-switch v22, :pswitch_data_472

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x10405ca

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v11, v24, v25

    const v25, 0x10405cb

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a9

    :pswitch_2c9
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x1040b4d

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v11, v24, v25

    const v25, 0x10405cb

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    move/from16 v24, v0

    if-eqz v24, :cond_30a

    move-object v8, v11

    :cond_30a
    const v13, 0x108090c

    goto/16 :goto_a9

    :pswitch_30f
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x10405ca

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a9

    :cond_33a
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_386

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v21, v24, v25

    const v25, 0x10405d0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v21, v24, v25

    const/16 v25, 0x1

    aput-object v12, v24, v25

    const v25, 0x10405d1

    move-object/from16 v0, v16

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_a9

    :cond_386
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown notification type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " on network transport "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b3
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    goto/16 :goto_ad

    :cond_3b7
    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v25

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_45b

    const/16 v24, 0x1

    :goto_3dc
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x10601bc

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_45f

    new-instance v24, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_43d
    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_455

    new-instance v24, Landroid/app/Notification$TvExtender;

    invoke-direct/range {v24 .. v24}, Landroid/app/Notification$TvExtender;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    :cond_455
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    goto/16 :goto_209

    :cond_45b
    const/16 v24, 0x0

    goto/16 :goto_3dc

    :cond_45f
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_43d

    :catch_463
    move-exception v15

    sget-object v24, Lcom/android/server/connectivity/NetworkNotificationManager;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "setNotificationVisible: visible notificationManager error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_227

    :pswitch_data_472
    .packed-switch 0x0
        :pswitch_30f
        :pswitch_2c9
    .end packed-switch
.end method

.method public showNotificationHun(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mIsHunNotification:Z

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public showNotificationUpdate(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mUpdateNotification:Z

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->getFirstTransportType(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->getTransportName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    const v5, 0x10405d2

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
