.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;
.super Landroid/app/Activity;
.source "ShareAccessibilityExportImport.java"


# static fields
.field private static MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

.field private static RevSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static isDialogShown:Z

.field private static isSdCardAvailable:Z

.field private static isSecondDialogShown:Z

.field private static settingValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExportFailNotificationManager:Landroid/app/NotificationManager;

.field private mExportNotificationManager:Landroid/app/NotificationManager;

.field private path:Ljava/lang/String;

.field pending_noti_external_intent:Landroid/app/PendingIntent;

.field pending_noti_internal_intent:Landroid/app/PendingIntent;

.field private window:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static synthetic -get0()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->importNotificationSet(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    sput-boolean v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSdCardAvailable:Z

    sput-boolean v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    const-string/jumbo v0, "com.samsung.settings.action.MANAGE_ACCESSIBILITY_IMPORT"

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->window:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private ShareAccessibilityExport_Init()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ShareAccessibilityImport_Init()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "share_accessibility_channel_id"

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v2, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "share_accessibility_channel_id"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0806a3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120a8c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void
.end method

.method private exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string/jumbo v7, "com.sec.android.app.myfiles"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    :cond_e
    if-nez v5, :cond_15

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :cond_15
    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exportNotificationSet which :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_109

    const-string/jumbo v7, "START_FOLDER"

    sget-object v8, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "samsung.myfiles.intent.extra.START_PATH"

    sget-object v8, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1213cb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120a8d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "notification"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    new-instance v6, Landroid/app/NotificationChannel;

    const-string/jumbo v7, "share_accessibility_channel_id"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v2, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v0, 0x0

    if-nez p3, :cond_131

    new-instance v7, Landroid/app/Notification$Builder;

    const-string/jumbo v8, "share_accessibility_channel_id"

    invoke-direct {v7, p0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0806a3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    :cond_b8
    :goto_b8
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v9, 0x103012b

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120a8e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_109
    const/4 v7, 0x1

    if-ne p3, v7, :cond_4e

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "/Accessibility"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "START_FOLDER"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p0, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    goto/16 :goto_4e

    :cond_131
    const/4 v7, 0x1

    if-ne p3, v7, :cond_b8

    new-instance v7, Landroid/app/Notification$Builder;

    const-string/jumbo v8, "share_accessibility_channel_id"

    invoke-direct {v7, p0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0806a3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    goto/16 :goto_b8
.end method

.method private importNotificationSet(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1213cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120dca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "importnotiticker"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "importnotititle"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "filename"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120dcb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showContent(I)V
    .registers 12

    const-wide/16 v8, 0x0

    const v7, 0x7f120a8b

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_d4

    :goto_9
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :pswitch_29
    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableInternalMemorySize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_35

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportMyFiles()V

    goto :goto_9

    :cond_35
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120e2e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_4c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FOLDERPATH"

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "CONTENT_TYPE"

    const-string/jumbo v5, "application/x-sasf"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "JUST_SELECT_MODE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x4

    :try_start_6f
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_9

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_9

    :pswitch_78
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableExternalMemorySize(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_86

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportSDCards()V

    goto :goto_9

    :cond_86
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120a94

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_9e
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FOLDERPATH"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "CONTENT_TYPE"

    const-string/jumbo v5, "application/x-sasf"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "JUST_SELECT_MODE"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x4

    :try_start_c8
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_cb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c8 .. :try_end_cb} :catch_cd

    goto/16 :goto_9

    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_9

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_29
        :pswitch_9e
        :pswitch_78
    .end packed-switch
.end method


# virtual methods
.method public exportMyFiles()V
    .registers 9

    const/16 v7, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v7, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2f
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v7, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings of accessibility_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".sasf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    sput v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v3, :cond_9d

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_9d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_df

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d3
    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void

    :cond_df
    const v3, 0x7f120a8b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120aff

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_d3
.end method

.method public exportSDCards()V
    .registers 10

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2f
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v7, :cond_51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    sput v8, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v4, :cond_68

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_68
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings of accessibility_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sasf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_e3

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d7
    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void

    :cond_e3
    const v4, 0x7f120a8b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120aff

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_d7
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_7f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7f

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    const-string/jumbo v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult PICK_SINGLE_FILE path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showDialog(I)V

    :goto_7e
    return-void

    :cond_7f
    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_7e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityExport_Init()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityImport_Init()V

    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showContent(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_3f

    goto :goto_1e

    :catch_3f
    move-exception v0

    sget-object v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_1e
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateDialog id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_52

    :goto_29
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0

    :pswitch_32
    const v2, 0x7f12165f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    const v4, 0x7f12089f

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    const v4, 0x7f120823

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_29

    nop

    :pswitch_data_52
    .packed-switch 0x5
        :pswitch_32
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sput-object v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_15

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_7

    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    packed-switch p1, :pswitch_data_12

    :goto_6
    return-void

    :pswitch_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_6

    :pswitch_c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_6

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
