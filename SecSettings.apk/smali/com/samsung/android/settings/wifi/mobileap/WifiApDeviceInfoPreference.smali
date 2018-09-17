.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowListSummary:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFragment:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsReset:Z

.field private mPreviousSsid:Ljava/lang/String;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mTempSsid:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mCurrentSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mPreviousSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mCurrentSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->compareSsid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "WifiApDeviceInfoPreference"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTempSsid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mIsReset:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->ssidWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v0, 0x7f0d0246

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    if-nez p2, :cond_3d

    const v0, 0x7f121eec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    :goto_39
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    return-void

    :cond_3d
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method

.method private compareSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method private showDialog(I)V
    .registers 9

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_b6

    return-void

    :pswitch_b
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "create dialog  DIALOG_MODIFY_PASSWORD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v3

    const v4, 0x7f12179e

    const v5, 0x7f120a49

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mPreviousSsid:Ljava/lang/String;

    const v3, 0x7f0d0390

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0806

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    const v3, 0x7f0a0807

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsidErrorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x7f122178

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    const v5, 0x7f1220f8

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    const v5, 0x7f121ffc

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x3
        :pswitch_b
    .end packed-switch
.end method

.method private validate()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_22

    if-nez v1, :cond_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dismissdialog()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Dismissing SSID Dialog in "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_19
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0839

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowListSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    const v0, 0x7f0a0995

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f08022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const-string/jumbo v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f08022a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e

    :cond_53
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3e
.end method

.method public onClickItem(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    return-void
.end method

.method public updateCurrent(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    return-void
.end method

.method public updateSsid(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public updateSummary()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWificonfig.macaddrAcl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowListSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowListSummary:Landroid/widget/TextView;

    const v1, 0x7f121ec5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowListSummary:Landroid/widget/TextView;

    const v1, 0x7f1221e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_38
.end method
