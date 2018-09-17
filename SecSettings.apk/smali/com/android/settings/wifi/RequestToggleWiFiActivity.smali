.class public Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestToggleWiFiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
    }
.end annotation


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastUpdateState:I

.field private final mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

.field private mState:I

.field private final mTimeoutCommand:Ljava/lang/Runnable;

.field private mWiFiManager:Landroid/net/wifi/WifiManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    new-instance v0, Lcom/android/settings/wifi/-$Lambda$OsBHS5IGWVJkHY7Dh6_raUAx9Mk;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$Lambda$OsBHS5IGWVJkHY7Dh6_raUAx9Mk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    iput v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    return-void
.end method

.method private scheduleToggleTimeout()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unscheduleToggleTimeout()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mTimeoutCommand:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateUi()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mLastUpdateState:I

    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v0, :pswitch_data_c8

    :goto_15
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setupAlert()V

    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f12014b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f1207b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    const v2, 0x7f121fe3

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_15

    :pswitch_49
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f12217b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_15

    :pswitch_6f
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f12014b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f1207b5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v2, v1, v5

    const v2, 0x7f121fe2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_15

    :pswitch_a0
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f122184

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_15

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_19
        :pswitch_49
        :pswitch_6f
        :pswitch_a0
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    return-void
.end method

.method synthetic lambda$-com_android_settings_wifi_RequestToggleWiFiActivity_1984()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    :cond_11
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_2e

    :goto_3
    return-void

    :pswitch_4
    iget v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v0, :pswitch_data_36

    :pswitch_9
    goto :goto_3

    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_3

    :pswitch_1a
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    goto :goto_3

    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_3

    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_2a
        :pswitch_4
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mAppLabel:Ljava/lang/CharSequence;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_39} :catch_4e

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.wifi.action.REQUEST_ENABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    :goto_4d
    return-void

    :catch_4e
    move-exception v2

    const-string/jumbo v4, "RequestToggleWiFiActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t find app with package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :cond_6d
    const-string/jumbo v4, "android.net.wifi.action.REQUEST_DISABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_4d

    :cond_7a
    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    goto :goto_4d
.end method

.method protected onStart()V
    .registers 4

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->register()V

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mWiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    packed-switch v1, :pswitch_data_62

    :goto_14
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->updateUi()V

    return-void

    :pswitch_18
    packed-switch v0, :pswitch_data_6e

    goto :goto_14

    :pswitch_1c
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_14

    :pswitch_23
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_2a
    packed-switch v0, :pswitch_data_76

    goto :goto_14

    :pswitch_2e
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_35
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_14

    :pswitch_3c
    packed-switch v0, :pswitch_data_7e

    goto :goto_14

    :pswitch_40
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_14

    :pswitch_44
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_4b
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_14

    :pswitch_4f
    packed-switch v0, :pswitch_data_8a

    goto :goto_14

    :pswitch_53
    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->scheduleToggleTimeout()V

    goto :goto_14

    :pswitch_57
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->finish()V

    return-void

    :pswitch_5e
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mState:I

    goto :goto_14

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_18
        :pswitch_3c
        :pswitch_2a
        :pswitch_4f
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_23
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_35
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_40
        :pswitch_40
        :pswitch_4b
        :pswitch_44
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_57
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->mReceiver:Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->unregister()V

    invoke-direct {p0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->unscheduleToggleTimeout()V

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
