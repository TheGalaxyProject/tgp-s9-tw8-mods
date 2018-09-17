.class public Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiConnectionHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;
    }
.end annotation


# instance fields
.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDateConnectionDialog:Landroid/app/AlertDialog;

.field private mDoNotShow:Landroid/content/SharedPreferences;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showdataConnectionDialog()V
    .registers 9

    const/4 v7, 0x0

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00e2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a051a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a028d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12206f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cc8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cc7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDateConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public OnOffData(Z)V
    .registers 5

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->semSetDataEnabled(Z)V

    const-string/jumbo v1, "WifiConnectionHandlerActivity"

    const-string/jumbo v2, "The data service will be enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :cond_18
    const-string/jumbo v1, "WifiConnectionHandlerActivity"

    const-string/jumbo v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "connhan_do_not_show"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "connhan_value"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8d

    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_80

    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    const-string/jumbo v3, "Setted button is Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    :goto_7c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V

    :goto_7f
    return-void

    :cond_80
    const-string/jumbo v2, "WifiConnectionHandlerActivity"

    const-string/jumbo v3, "Setted button is Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    goto :goto_7c

    :cond_8d
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->showdataConnectionDialog()V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    goto :goto_7f
.end method

.method protected onDestroy()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    :cond_c
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    return-void
.end method
